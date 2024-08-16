import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:pomodoro/presentation/blocs/settings/settings_bloc.dart';
import 'package:pomodoro/presentation/localizations/app_localizations.dart';
import 'package:pomodoro/presentation/widgets/github_logo_icon.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.settingsPageTitle),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.zero,
            child: ListTile(
              onTap: () => _toggleSoundEffectsEnabled(context),
              leading: const Icon(Symbols.volume_up_rounded),
              title: Text(tr.soundEffectsSettingTitle),
              trailing: BlocSelector<SettingsBloc, SettingsState, bool>(
                selector: (state) => state.soundEffectsEnabled,
                builder: (context, soundEffectsEnabled) => Switch(
                  value: soundEffectsEnabled,
                  onChanged: (value) => _toggleSoundEffectsEnabled(context),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          const _OpenGitHubRepository(),
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

class _OpenGitHubRepository extends StatelessWidget {
  const _OpenGitHubRepository();

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.zero,
      child: ListTile(
        onTap: () => launchUrlString('https://github.com/fleetby/pomodoro'),
        leading: const GitHubLogoIcon(),
        title: Text(tr.githubAction),
        trailing: const Icon(Symbols.chevron_right_rounded),
      ),
    );
  }
}
