import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:pomodoro/presentation/app_router.gr.dart';
import 'package:pomodoro/presentation/localizations/app_localizations.dart';

@RoutePage()
class ShellPage extends StatelessWidget {
  const ShellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        TasksRoute(),
        SettingsRoute(),
      ],
      builder: (context, child) {
        final tr = AppLocalizations.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: NavigationBar(
            selectedIndex: context.tabsRouter.activeIndex,
            onDestinationSelected: context.tabsRouter.setActiveIndex,
            destinations: [
              NavigationDestination(
                icon: const Icon(Symbols.timer_rounded),
                label: tr.timerDestinationLabel,
              ),
              NavigationDestination(
                icon: const Icon(Symbols.format_list_bulleted_rounded),
                label: tr.tasksDestinationLabel,
              ),
              NavigationDestination(
                icon: const Icon(Symbols.settings_rounded),
                label: tr.settingsDestinationLabel,
              ),
            ],
          ),
        );
      },
    );
  }
}
