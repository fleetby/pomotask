abstract interface class SettingsRepository {
  Future<bool> getSoundEffectsEnabled();
  Future<void> setSoundEffectsEnabled({required bool enabled});
  // TODO Ability to change these settings
  Future<Duration> getPomodoroDuration();
  Future<Duration> getShortBreakDuration();
  Future<Duration> getLongBreakDuration();
  Future<int> getLongBreakInterval();
}
