import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Pomodoro';

  @override
  String get titleFieldHint => 'Title';

  @override
  String get descriptionFieldHint => 'Description';

  @override
  String get taskPriorityCardLabel => 'Task priority';

  @override
  String get pomodoroCountCardLabel => 'Pomodoro count';

  @override
  String get createTaskPageTitle => 'Create task';

  @override
  String get editTaskPageTitle => 'Edit task';

  @override
  String get taskListPageTitle => 'Task list';

  @override
  String get completedTasksHeader => 'Completed tasks';

  @override
  String get clearAction => 'Clear';

  @override
  String get startOverAction => 'Start over';

  @override
  String get settingsPageTitle => 'Settings';

  @override
  String get soundEffectsSettingTitle => 'Sound effects';

  @override
  String get timerDestinationLabel => 'Timer';

  @override
  String get tasksDestinationLabel => 'Tasks';

  @override
  String get settingsDestinationLabel => 'Settings';

  @override
  String get selectTaskAction => 'Select a task';

  @override
  String get startTimerAction => 'Start timer';

  @override
  String get pomodoroTimerText => 'Time to focus!';

  @override
  String get shortBreakTimerText => 'Short break';

  @override
  String get longBreakTimerText => 'Long break';

  @override
  String get lowPriorityText => 'Low';

  @override
  String get mediumPriorityText => 'Medium';

  @override
  String get highPriorityText => 'High';

  @override
  String get couldNotCreateTaskFailure => 'Could not create task';

  @override
  String get couldNotEditTaskFailure => 'Could not edit task';

  @override
  String get emptyTaskListPlaceholderText => 'Add a task and get started!';

  @override
  String get githubAction => 'GitHub';
}
