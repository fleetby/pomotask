enum PomodoroTimerType {
  pomodoro(Duration(minutes: 25)),
  shortBreak(Duration(minutes: 5)),
  longBreak(Duration(minutes: 15));

  const PomodoroTimerType(this.duration);

  final Duration duration;
}
