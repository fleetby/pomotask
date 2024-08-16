import 'package:injectable/injectable.dart';
import 'package:pomodoro/domain/repositories/settings_repository.dart';

@singleton
class GetSoundEffectsEnabledUseCase {
  const GetSoundEffectsEnabledUseCase(this._settingsRepository);

  final SettingsRepository _settingsRepository;

  Future<bool> call() => _settingsRepository.getSoundEffectsEnabled();
}
