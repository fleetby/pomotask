import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomodoro/blocs/pomodoro/pomodoro_bloc.dart';
import 'package:pomodoro/blocs/settings/settings_bloc.dart';
import 'package:pomodoro/blocs/timer/timer_bloc.dart';
import 'package:pomodoro/constants/pomodoro_timer_type.dart';
import 'package:pomodoro/constants/routes.dart';
import 'package:pomodoro/utils/duration_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _timerFinishedPlayer = AudioPlayer();
  final _timerFinishedAudio = AssetSource('timer_finished.mp3');

  @override
  void initState() {
    super.initState();
    _timerFinishedPlayer.setSource(_timerFinishedAudio);
    _timerFinishedPlayer.setReleaseMode(ReleaseMode.stop);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocListener<TimerBloc, TimerState>(
      listener: (context, state) {
        if (state is TimerFinished) {
          context
              .read<PomodoroBloc>()
              .add(const PomodoroEvent.increaseTimerCount());

          final soundEffectsEnabled =
              context.read<SettingsBloc>().state.soundEffectsEnabled;
          if (soundEffectsEnabled) {
            _timerFinishedPlayer.resume();
          }
        }
      },
      child: BlocSelector<PomodoroBloc, PomodoroState, PomodoroTimerType>(
        selector: (state) => state.timerType,
        builder: (context, timerType) => Scaffold(
          appBar: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle.light,
            forceMaterialTransparency: true,
            leading: IconButton(
              onPressed: () {
                context.read<TimerBloc>().add(const TimerEvent.reset());
                context.read<PomodoroBloc>().add(const PomodoroEvent.reset());
              },
              icon: Icon(
                Icons.refresh_rounded,
                color: theme.colorScheme.onPrimary,
              ),
            ),
            actions: [
              IconButton(
                constraints: BoxConstraints.tight(const Size.square(56)),
                onPressed: () =>
                    Navigator.of(context).pushNamed(Routes.settings),
                icon: Icon(
                  Icons.settings_rounded,
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ],
          ),
          backgroundColor: switch (timerType) {
            PomodoroTimerType.pomodoro => theme.colorScheme.primary,
            PomodoroTimerType.shortBreak => theme.colorScheme.secondary,
            PomodoroTimerType.longBreak => theme.colorScheme.tertiary,
          },
          body: BlocSelector<TimerBloc, TimerState, Duration?>(
            selector: (state) => state.mapOrNull(
              ongoing: (state) => state.remainingTime,
              paused: (state) => state.remainingTime,
            ),
            builder: (context, remainingTime) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  remainingTime?.mmss ?? timerType.duration.mmss,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 100,
                    color: theme.colorScheme.onPrimary,
                  ),
                ),
                BlocSelector<PomodoroBloc, PomodoroState, int>(
                  selector: (state) => state.currentTimerTypeCount,
                  builder: (context, count) {
                    return Text(
                      "#$count",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: theme.colorScheme.onPrimary,
                      ),
                    );
                  },
                ),
                BlocSelector<PomodoroBloc, PomodoroState, PomodoroTimerType>(
                  selector: (state) => state.timerType,
                  builder: (context, state) {
                    return Text(
                      switch (state) {
                        PomodoroTimerType.pomodoro => "Time to focus!",
                        PomodoroTimerType.shortBreak => "Time to rest!",
                        PomodoroTimerType.longBreak => "Time to rest!",
                      },
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: theme.colorScheme.onPrimary,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: BlocBuilder<TimerBloc, TimerState>(
            builder: (context, state) {
              if (state is TimerOngoing || state is TimerPaused) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (state is TimerOngoing)
                      FloatingActionButton(
                        onPressed: () => context
                            .read<TimerBloc>()
                            .add(const TimerEvent.pause()),
                        child: const Icon(Icons.pause),
                      )
                    else
                      FloatingActionButton(
                        onPressed: () => context
                            .read<TimerBloc>()
                            .add(const TimerEvent.resume()),
                        child: const Icon(Icons.play_arrow_rounded),
                      ),
                    const SizedBox(width: 8),
                    FloatingActionButton(
                      onPressed: () => context
                          .read<TimerBloc>()
                          .add(const TimerEvent.skip()),
                      child: const Icon(Icons.skip_next_rounded),
                    ),
                  ],
                );
              }
              return FloatingActionButton.extended(
                backgroundColor: theme.colorScheme.primaryContainer,
                foregroundColor: theme.colorScheme.onPrimaryContainer,
                onPressed: () {
                  final duration =
                      context.read<PomodoroBloc>().state.timerType.duration;
                  context
                      .read<TimerBloc>()
                      .add(TimerEvent.start(duration: duration));
                },
                icon: const Icon(Icons.play_arrow_rounded),
                label: const Text("Start timer"),
              );
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timerFinishedPlayer.dispose();
    super.dispose();
  }
}
