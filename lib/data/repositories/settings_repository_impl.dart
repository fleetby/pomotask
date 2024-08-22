import 'package:injectable/injectable.dart';
import 'package:pomotask/domain/constants/pomodoro_timer_type.dart';
import 'package:pomotask/domain/repositories/settings_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: SettingsRepository)
class SettingsRepositoryImpl implements SettingsRepository {
  const SettingsRepositoryImpl(this._sharedPreferences);

  static const _soundEffectsEnabledKey = 'soundEffectsEnabled';
  static const _soundEffectsEnabledDefaultValue = true;

  final SharedPreferencesAsync _sharedPreferences;

  @override
  Future<bool> getSoundEffectsEnabled() async =>
      (await _sharedPreferences.getBool(_soundEffectsEnabledKey)) ??
      _soundEffectsEnabledDefaultValue;

  @override
  Future<void> setSoundEffectsEnabled({required bool enabled}) =>
      _sharedPreferences.setBool(_soundEffectsEnabledKey, enabled);

  @override
  Future<Duration> getPomodoroDuration() =>
      Future.value(PomodoroTimerType.pomodoro.duration);

  @override
  Future<Duration> getShortBreakDuration() =>
      Future.value(PomodoroTimerType.shortBreak.duration);

  @override
  Future<Duration> getLongBreakDuration() =>
      Future.value(PomodoroTimerType.longBreak.duration);

  @override
  Future<int> getLongBreakInterval() => Future.value(4);
}
