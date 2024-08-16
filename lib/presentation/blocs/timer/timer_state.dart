part of 'timer_bloc.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState.initial() = TimerInitial;
  const factory TimerState.ongoing({required Duration remainingTime}) =
      TimerOngoing;
  const factory TimerState.paused({required Duration remainingTime}) =
      TimerPaused;
  const factory TimerState.finished() = TimerFinished;
}
