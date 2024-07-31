import 'package:flutter/material.dart';
import 'package:pomodoro/blocs/pomodoro/pomodoro_bloc.dart';
import 'package:pomodoro/blocs/settings/settings_bloc.dart';
import 'package:pomodoro/blocs/timer/timer_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomodoro/pages/settings_page.dart';
import 'package:pomodoro/constants/routes.dart';
import 'package:pomodoro/repositories/settings_repository.dart';

import 'pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<SettingsRepository>(
            create: (context) => SettingsRepositoryImpl()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => TimerBloc()),
          BlocProvider(create: (context) => PomodoroBloc()),
          BlocProvider(
              create: (context) => SettingsBloc(context.read())
                ..add(const SettingsEvent.load())),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light().copyWith(
            actionIconTheme: ActionIconThemeData(
              backButtonIconBuilder: (context) =>
                  const Icon(Icons.arrow_back_rounded),
            ),
          ),
          themeMode: ThemeMode.light,
          routes: {
            Routes.initial: (context) => const HomePage(),
            Routes.settings: (context) => const SettingsPage(),
          },
        ),
      ),
    );
  }
}
