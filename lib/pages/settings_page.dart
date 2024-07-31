import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomodoro/blocs/settings/settings_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () => _toggleSoundEffectsEnabled(context),
            leading: const Icon(Icons.volume_up_rounded),
            title: const Text('Sound Effects'),
            trailing: BlocSelector<SettingsBloc, SettingsState, bool>(
              selector: (state) => state.soundEffectsEnabled,
              builder: (context, soundEffectsEnabled) => Switch(
                value: soundEffectsEnabled,
                onChanged: (value) => _toggleSoundEffectsEnabled(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _toggleSoundEffectsEnabled(BuildContext context) {
    final newValue = !context.read<SettingsBloc>().state.soundEffectsEnabled;
    context
        .read<SettingsBloc>()
        .add(SettingsEvent.setSoundEffectsEnabled(enabled: newValue));
  }
}
