import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomodoro/domain/constants/pomodoro_timer_type.dart';
import 'package:pomodoro/presentation/blocs/pomodoro/pomodoro_bloc.dart';
import 'package:pomodoro/presentation/localizations/app_localizations.dart';
import 'package:pomodoro/presentation/utils/duration_utils.dart';
import 'package:pomodoro/presentation/widgets/dashed_circular_progress_bar.dart';

class CircularTimer extends StatelessWidget {
  const CircularTimer({
    required this.remainingTime,
    required this.timerType,
    super.key,
  });

  final Duration? remainingTime;
  final PomodoroTimerType timerType;

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return DashedCircularProgressBar.aspectRatio(
      backgroundColor: const Color(0xffd7defd),
      foregroundColor: const Color(0xff6d7cff),
      seekColor: Colors.white,
      backgroundStrokeWidth: 20,
      foregroundStrokeWidth: 20,
      maxProgress: 1,
      aspectRatio: 1,
      progress:
          (remainingTime?.inMilliseconds ?? timerType.duration.inMilliseconds) /
              timerType.duration.inMilliseconds,
      seekSize: remainingTime != null ? 12 : 0,
      child: Padding(
        padding: const EdgeInsets.all(64),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                remainingTime?.mmss ?? timerType.duration.mmss,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 64),
              ),
              BlocSelector<PomodoroBloc, PomodoroState, int>(
                selector: (state) => state.currentTimerTypeCount,
                builder: (context, count) {
                  return Text(
                    '#$count',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 24),
                  );
                },
              ),
              BlocSelector<PomodoroBloc, PomodoroState, PomodoroTimerType>(
                selector: (state) => state.timerType,
                builder: (context, state) {
                  return Text(
                    switch (state) {
                      PomodoroTimerType.pomodoro => tr.pomodoroTimerText,
                      PomodoroTimerType.shortBreak => tr.shortBreakTimerText,
                      PomodoroTimerType.longBreak => tr.longBreakTimerText,
                    },
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 24),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
