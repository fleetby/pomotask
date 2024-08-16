part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required bool soundEffectsEnabled,
  }) = _SettingsState;
}
