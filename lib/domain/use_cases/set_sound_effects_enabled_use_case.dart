import 'package:injectable/injectable.dart';
import 'package:pomodoro/domain/repositories/settings_repository.dart';

@singleton
class SetSoundEffectsEnabledUseCase {
  const SetSoundEffectsEnabledUseCase(this._settingsRepository);

  final SettingsRepository _settingsRepository;

  Future<void> call({required bool enabled}) =>
      _settingsRepository.setSoundEffectsEnabled(enabled: enabled);
}
