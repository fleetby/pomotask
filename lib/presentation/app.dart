import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomotask/get.dart';
import 'package:pomotask/presentation/app_router.dart';
import 'package:pomotask/presentation/blocs/pomodoro/pomodoro_bloc.dart';
import 'package:pomotask/presentation/blocs/settings/settings_bloc.dart';
import 'package:pomotask/presentation/blocs/timer/timer_bloc.dart';
import 'package:pomotask/presentation/localizations/app_localizations.dart';

import 'package:pomotask/presentation/styles/themes.dart';

class App extends StatelessWidget {
  const App(this._appRouter, {super.key});

  final AppRouter _appRouter;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => get<TimerBloc>()),
        BlocProvider(create: (context) => get<PomodoroBloc>()),
        BlocProvider(
          create: (context) =>
              get<SettingsBloc>()..add(const SettingsEvent.load()),
        ),
      ],
      child: MaterialApp.router(
        onGenerateTitle: (context) => AppLocalizations.of(context).appName,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        themeMode: appThemeMode,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
