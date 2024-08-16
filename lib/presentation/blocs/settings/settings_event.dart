part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.load() = SettingsLoad;
  const factory SettingsEvent.setSoundEffectsEnabled({required bool enabled}) =
      SettingSetSoundEffectsEnabled;
}
