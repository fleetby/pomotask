import 'package:injectable/injectable.dart';
import 'package:pomodoro/domain/constants/pomodoro_timer_type.dart';
import 'package:pomodoro/domain/repositories/settings_repository.dart';

@singleton
class GetNextPomodoroTimerTypeUseCase {
  const GetNextPomodoroTimerTypeUseCase(this._settingsRepository);

  final SettingsRepository _settingsRepository;

  Future<PomodoroTimerType> call({
    required PomodoroTimerType currentTimerType,
    required Map<PomodoroTimerType, int> timerCount,
  }) async {
    final longBreakInterval = await _settingsRepository.getLongBreakInterval();

    if (currentTimerType == PomodoroTimerType.pomodoro) {
      final pomodoroPassed = timerCount[PomodoroTimerType.pomodoro] ?? 0;

      if (pomodoroPassed % longBreakInterval == 0) {
        return PomodoroTimerType.longBreak;
      } else {
        return PomodoroTimerType.shortBreak;
      }
    } else {
      return PomodoroTimerType.pomodoro;
    }
  }
}
