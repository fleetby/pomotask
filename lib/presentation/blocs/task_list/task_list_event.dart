part of 'task_list_bloc.dart';

@freezed
class TaskListEvent with _$TaskListEvent {
  const factory TaskListEvent.set({required List<TaskModel> tasks}) =
      TaskListSet;
  const factory TaskListEvent.delete({required int taskId}) = TaskListDelete;
  const factory TaskListEvent.deleteCompleted() = TaskListDeleteCompleted;
}
