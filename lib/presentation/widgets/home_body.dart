import 'package:audioplayers/audioplayers.dart';
import 'package:confetti/confetti.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:pomotask/domain/constants/pomodoro_timer_type.dart';
import 'package:pomotask/presentation/app_router.gr.dart';
import 'package:pomotask/presentation/blocs/pomodoro/pomodoro_bloc.dart';
import 'package:pomotask/presentation/blocs/settings/settings_bloc.dart';
import 'package:pomotask/presentation/blocs/timer/timer_bloc.dart';
import 'package:pomotask/presentation/constants/task_item_action.dart';
import 'package:pomotask/presentation/localizations/app_localizations.dart';
import 'package:pomotask/presentation/view_models/task_view_model.dart';
import 'package:pomotask/presentation/widgets/circular_timer.dart';
import 'package:pomotask/presentation/widgets/task_item.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final _timerFinishedPlayer = AudioPlayer();
  final _timerFinishedAudio = AssetSource('timer_finished.mp3');
  final _confettiController =
      ConfettiController(duration: const Duration(seconds: 1));

  @override
  void initState() {
    super.initState();
    _timerFinishedPlayer
      ..setSource(_timerFinishedAudio)
      ..setReleaseMode(ReleaseMode.stop);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MultiBlocListener(
      listeners: [
        BlocListener<TimerBloc, TimerState>(
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
        ),
        BlocListener<PomodoroBloc, PomodoroState>(
          listenWhen: (previous, current) =>
              previous.lastCompletedTaskId != current.lastCompletedTaskId,
          listener: (context, state) {
            if (state.lastCompletedTaskId != null) {
              _confettiController.play();
            }
          },
        ),
      ],
      child: BlocSelector<PomodoroBloc, PomodoroState, PomodoroTimerType>(
        selector: (state) => state.timerType,
        builder: (context, timerType) => Scaffold(
          appBar: AppBar(
            forceMaterialTransparency: true,
            leading: IconButton(
              onPressed: () {
                context.read<TimerBloc>().add(const TimerEvent.reset());
                context.read<PomodoroBloc>().add(const PomodoroEvent.reset());
              },
              icon: const Icon(Symbols.refresh_rounded),
            ),
          ),
          backgroundColor: theme.colorScheme.surface,
          body: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  constraints: BoxConstraints.loose(const Size.fromWidth(500)),
                  child: BlocSelector<TimerBloc, TimerState, bool>(
                    selector: (state) => state is TimerOngoing,
                    builder: (context, ongoing) {
                      return BlocSelector<PomodoroBloc, PomodoroState,
                          TaskViewModel?>(
                        selector: (state) => state.pinnedTask,
                        builder: (context, pinnedTask) => AnimatedSwitcher(
                          duration: kThemeChangeDuration,
                          transitionBuilder: (child, animation) =>
                              FadeTransition(
                            opacity: animation,
                            child: child,
                          ),
                          child: Padding(
                            key: ValueKey(pinnedTask?.id ?? ongoing),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: pinnedTask == null
                                ? ongoing
                                    ? const SizedBox.shrink()
                                    : const _TaskPlaceholder()
                                : TaskItem(
                                    pinnedTask,
                                    action: TaskItemAction.unpin,
                                    onTap: () => TaskDetailsRoute(
                                      taskId: pinnedTask.id,
                                      showFab: false,
                                    ).push<void>(context),
                                    onActionPressed: () =>
                                        context.read<PomodoroBloc>().add(
                                              const PomodoroEvent.pinTask(
                                                taskId: null,
                                              ),
                                            ),
                                  ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              BlocSelector<TimerBloc, TimerState, Duration?>(
                selector: (state) => state.mapOrNull(
                  ongoing: (state) => state.remainingTime,
                  paused: (state) => state.remainingTime,
                ),
                builder: (context, remainingTime) => Center(
                  child: Padding(
                    padding: const EdgeInsets.all(32),
                    child: ConstrainedBox(
                      constraints: BoxConstraints.loose(const Size.square(320)),
                      child: CircularTimer(
                        remainingTime: remainingTime,
                        timerType: timerType,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: ConfettiWidget(
                  confettiController: _confettiController,
                  blastDirectionality: BlastDirectionality.explosive,
                  minBlastForce: 50,
                  maxBlastForce: 51,
                  numberOfParticles: 30,
                  emissionFrequency: 0,
                ),
              ),
            ],
          ),
          floatingActionButton: BlocBuilder<TimerBloc, TimerState>(
            builder: (context, state) => AnimatedSwitcher(
              duration: const Duration(microseconds: 100),
              transitionBuilder: (child, animation) =>
                  FadeTransition(opacity: animation, child: child),
              child: state is TimerOngoing || state is TimerPaused
                  ? const _OngoingBar()
                  : const _StartTimerButton(),
            ),
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
    _confettiController.dispose();
    super.dispose();
  }
}

class _TaskPlaceholder extends StatelessWidget {
  const _TaskPlaceholder();

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(6),
      strokeCap: StrokeCap.round,
      dashPattern: const [3],
      padding: EdgeInsets.zero,
      child: Card.outlined(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.zero,
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          onTap: () => const TasksRoute().navigate(context),
          leading: const Icon(Symbols.keep_rounded),
          title: Text(tr.selectTaskAction),
        ),
      ),
    );
  }
}

class _StartTimerButton extends StatelessWidget {
  const _StartTimerButton();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    return FloatingActionButton.extended(
      heroTag: null,
      backgroundColor: theme.colorScheme.primary,
      foregroundColor: theme.colorScheme.onPrimary,
      onPressed: () {
        final duration = context.read<PomodoroBloc>().state.timerType.duration;
        context.read<TimerBloc>().add(TimerEvent.start(duration: duration));
      },
      icon: const Icon(Symbols.play_arrow_rounded),
      label: Text(tr.startTimerAction),
    );
  }
}

class _OngoingBar extends StatelessWidget {
  const _OngoingBar();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TimerBloc>().state;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (state is TimerOngoing)
          FloatingActionButton(
            heroTag: null,
            onPressed: () =>
                context.read<TimerBloc>().add(const TimerEvent.pause()),
            child: const Icon(Symbols.pause_rounded),
          )
        else
          FloatingActionButton(
            heroTag: null,
            onPressed: () =>
                context.read<TimerBloc>().add(const TimerEvent.resume()),
            child: const Icon(Symbols.play_arrow_rounded),
          ),
        const SizedBox(width: 8),
        FloatingActionButton(
          onPressed: () =>
              context.read<TimerBloc>().add(const TimerEvent.skip()),
          child: const Icon(Symbols.skip_next_rounded),
        ),
      ],
    );
  }
}
