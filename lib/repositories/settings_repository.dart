import 'package:shared_preferences/shared_preferences.dart';

abstract interface class SettingsRepository {
  Future<bool> getSoundEffectsEnabled();
  Future<void> setSoundEffectsEnabled(bool enabled);
}

class SettingsRepositoryImpl implements SettingsRepository {
  static const _soundEffectsEnabledKey = 'soundEffectsEnabled';
  static const _soundEffectsEnabledDefaultValue = true;

  final _sharedPreferences = SharedPreferences.getInstance();

  @override
  Future<bool> getSoundEffectsEnabled() => _sharedPreferences.then((sf) =>
      (sf.getBool(_soundEffectsEnabledKey) ??
          _soundEffectsEnabledDefaultValue) ==
      true);

  @override
  Future<void> setSoundEffectsEnabled(bool enabled) =>
      _sharedPreferences.then((sf) =>
          sf.getBool(_soundEffectsEnabledKey) ??
          _soundEffectsEnabledDefaultValue);
}
