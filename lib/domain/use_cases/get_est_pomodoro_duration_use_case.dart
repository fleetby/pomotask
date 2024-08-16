import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:pomodoro/domain/repositories/settings_repository.dart';

@singleton
class GetEstPomodoroDurationUseCase {
  const GetEstPomodoroDurationUseCase(this._settingsRepository);

  final SettingsRepository _settingsRepository;

  Future<Duration> call({
    required int pomodoroCount,

    /// Indicates whether to respect passed pomodoros/breaks or not.
    /// If true, the count starts from the beginning of the cycle.
    required bool static,

    /// The number of the task's total completed pomodoros.
    int pomodoroPassed = 0,

    /// The number of short breaks completed in the current session.
    int shortBreaksPassed = 0,

    /// The number of long breaks completed in the current session.
    int longBreaksPassed = 0,

    /// The number of completed pomodoros in the current session.
    /// Used to correctly calculate the first interval of the long break,
    /// which may vary.
    ///
    /// Note: Leading breaks are not counted, and the count starts
    /// from the nearest pomodoro (either current or next).
    int pomodoroOffset = 0,
  }) async {
    if (static) {
      pomodoroCount -= pomodoroPassed;
    }

    if (pomodoroCount <= 0) {
      return Duration.zero;
    }

    final pomodoroDuration = await _settingsRepository.getPomodoroDuration();
    final shortBreakDuration =
        await _settingsRepository.getShortBreakDuration();
    final longBreakDuration = await _settingsRepository.getLongBreakDuration();
    final longBreakInterval = await _settingsRepository.getLongBreakInterval();

    var beforeFirstLongBreak = Duration.zero;
    var pomodorosBeforeFirstLongBreak = 0;
    if (pomodoroOffset > 0 && pomodoroCount >= longBreakInterval) {
      pomodorosBeforeFirstLongBreak =
          longBreakInterval - _repeat(pomodoroOffset, longBreakInterval);

      beforeFirstLongBreak = _calculate(
            pomodoroCount: pomodorosBeforeFirstLongBreak + 1,
            pomodoroDuration: pomodoroDuration,
            shortBreakDuration: shortBreakDuration,
            longBreakDuration: longBreakDuration,
            longBreakInterval: pomodorosBeforeFirstLongBreak,
          ) -
          pomodoroDuration;
    }

    final afterFirstLongBreak = _calculate(
      pomodoroCount: pomodoroCount - max(pomodorosBeforeFirstLongBreak, 0),
      pomodoroDuration: pomodoroDuration,
      shortBreakDuration: shortBreakDuration,
      longBreakDuration: longBreakDuration,
      longBreakInterval: longBreakInterval,
    );

    var duration = beforeFirstLongBreak + afterFirstLongBreak;

    if (!static) {
      if (pomodoroPassed > 0) {
        duration -= pomodoroDuration * pomodoroPassed;
      }

      if (shortBreaksPassed > 0) {
        duration -= shortBreakDuration * shortBreaksPassed;
      }

      if (longBreaksPassed > 0) {
        duration -= longBreakDuration * longBreaksPassed;
      }
    }

    return duration;
  }

  /// Calculates the total duration based on provided parameters.
  ///
  /// - [pomodoroCount]: The number of pomodoros.
  /// - [pomodoroDuration]: Duration of a single pomodoro.
  /// - [shortBreakDuration]: Duration of a short break.
  /// - [longBreakDuration]: Duration of a long break.
  /// - [longBreakInterval]: The interval after which a long break is taken.
  ///
  /// Returns the total duration as a [Duration].
  static Duration _calculate({
    required int pomodoroCount,
    required Duration pomodoroDuration,
    required Duration shortBreakDuration,
    required Duration longBreakDuration,
    required int longBreakInterval,
  }) {
    final breakCount = max(pomodoroCount - 1, 0);
    final longBreakCount = breakCount > 0 ? breakCount ~/ longBreakInterval : 0;
    final shortBreakCount = max(breakCount - longBreakCount, 0);

    final duration = (pomodoroDuration * pomodoroCount) +
        (longBreakDuration * longBreakCount) +
        (shortBreakDuration * shortBreakCount);

    return duration;
  }

  /// Returns the adjusted value based on the repeat interval.
  ///
  /// - [value]: The value to adjust.
  /// - [repeat]: The repeat interval.
  ///
  /// Returns the adjusted value as an integer.
  static int _repeat(int value, int repeat) => (value - 1) % repeat + 1;
}
