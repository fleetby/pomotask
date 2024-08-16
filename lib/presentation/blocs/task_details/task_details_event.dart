part of 'task_details_bloc.dart';

@freezed
class TaskDetailsEvent with _$TaskDetailsEvent {
  const factory TaskDetailsEvent.load({required int taskId}) = TaskDetailsLoad;
  const factory TaskDetailsEvent.set({required TaskModel task}) =
      TaskDetailsSet;
  const factory TaskDetailsEvent.delete() = TaskDetailsDelete;
  const factory TaskDetailsEvent.startOver() = TaskDetailsStartOver;
}
