part of 'task_details_bloc.dart';

@freezed
class TaskDetailsState with _$TaskDetailsState {
  const factory TaskDetailsState.initial() = TaskDetailsInitial;
  const factory TaskDetailsState.loading() = TaskDetailsLoading;
  const factory TaskDetailsState.loaded({required TaskModel task}) =
      TaskDetailsLoaded;
  const factory TaskDetailsState.deleted() = TaskDetailsDeleted;
  const factory TaskDetailsState.error() = TaskDetailsError;
}
