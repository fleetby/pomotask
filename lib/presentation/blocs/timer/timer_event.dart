part of 'timer_bloc.dart';

@freezed
class TimerEvent with _$TimerEvent {
  const factory TimerEvent.start({required Duration duration}) = TimerStart;
  const factory TimerEvent.finish() = TimerFinish;
  const factory TimerEvent.pause() = TimerPause;
  const factory TimerEvent.resume() = TimerResume;
  const factory TimerEvent.skip() = TimerSkip;
  const factory TimerEvent.reset() = TimerReset;
}
