import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pomodoro/repositories/settings_repository.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc(this._settingsRepository)
      : super(const SettingsState(soundEffectsEnabled: true)) {
    on<SettingsLoad>(_load);
    on<SettingSetSoundEffectsEnabled>(_setSoundEffectsEnabled);
  }

  final SettingsRepository _settingsRepository;

  Future<void> _load(SettingsLoad event, Emitter<SettingsState> emit) async {
    final soundEffectsEnabled =
        await _settingsRepository.getSoundEffectsEnabled();
    emit(SettingsState(soundEffectsEnabled: soundEffectsEnabled));
  }

  Future<void> _setSoundEffectsEnabled(
      SettingSetSoundEffectsEnabled event, Emitter<SettingsState> emit) async {
    await _settingsRepository.setSoundEffectsEnabled(event.enabled);
    emit(SettingsState(soundEffectsEnabled: event.enabled));
  }
}
