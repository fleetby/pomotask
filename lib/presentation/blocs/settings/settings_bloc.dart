import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pomodoro/domain/use_cases/get_sound_effects_enabled_use_case.dart';
import 'package:pomodoro/domain/use_cases/set_sound_effects_enabled_use_case.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc(
    this._getSoundEffectsEnabledUseCase,
    this._setSoundEffectsEnabledUseCase,
  ) : super(const SettingsState(soundEffectsEnabled: true)) {
    on<SettingsLoad>(_load);
    on<SettingSetSoundEffectsEnabled>(_setSoundEffectsEnabled);
  }

  final GetSoundEffectsEnabledUseCase _getSoundEffectsEnabledUseCase;
  final SetSoundEffectsEnabledUseCase _setSoundEffectsEnabledUseCase;

  Future<void> _load(SettingsLoad event, Emitter<SettingsState> emit) async {
    final soundEffectsEnabled =
        await _getSoundEffectsEnabledUseCase();
    emit(SettingsState(soundEffectsEnabled: soundEffectsEnabled));
  }

  Future<void> _setSoundEffectsEnabled(
    SettingSetSoundEffectsEnabled event,
    Emitter<SettingsState> emit,
  ) async {
    await _setSoundEffectsEnabledUseCase(enabled: event.enabled);
    emit(SettingsState(soundEffectsEnabled: event.enabled));
  }
}
