part of 'pomodoro_bloc.dart';

@freezed
class PomodoroState with _$PomodoroState {
  const factory PomodoroState({
    @Default(PomodoroTimerType.pomodoro) PomodoroTimerType timerType,
    @Default({
      PomodoroTimerType.pomodoro: 1,
      PomodoroTimerType.shortBreak: 1,
      PomodoroTimerType.longBreak: 1,
    })
    Map<PomodoroTimerType, int> timerCount,
    TaskViewModel? pinnedTask,
    @Default(false)
    bool pinnedTaskPassedFirstPomodoro,
    int? lastCompletedTaskId,
  }) = _PomodoroState;

  const PomodoroState._();

  int get currentTimerTypeCount => timerCount[timerType]!;
}
