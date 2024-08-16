part of 'task_list_bloc.dart';

@freezed
class TaskListState with _$TaskListState {
  const factory TaskListState({
    required bool loading,
    @Default([])
    List<TaskViewModel> tasks,
    int? indexOfLastNonCompletedTask,
  }) = _TaskListState;
}
