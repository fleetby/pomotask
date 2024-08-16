part of 'pomodoro_bloc.dart';

@freezed
class PomodoroEvent with _$PomodoroEvent {
  const factory PomodoroEvent.changeTimerType({
    required PomodoroTimerType timerType,
  }) = PomodoroChangeTimerType;

  const factory PomodoroEvent.increaseTimerCount() = PomodoroIncreaseTimerCount;

  const factory PomodoroEvent.pinTask({required int? taskId}) = PomodoroPinTask;

  const factory PomodoroEvent.reset() = PomodoroReset;
}
