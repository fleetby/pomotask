import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pomotask/presentation/extensions/countdown_timer_extension.dart';
import 'package:quiver/async.dart';
import 'package:quiver/time.dart';

part 'timer_event.dart';
part 'timer_state.dart';
part 'timer_bloc.freezed.dart';

@injectable
class TimerBloc extends Bloc<TimerEvent, TimerState> {
  TimerBloc() : super(const TimerState.initial()) {
    on<TimerStart>(_start);
    on<TimerSkip>(_skip);
    on<TimerPause>(_pause);
    on<TimerResume>(_resume);
    on<TimerReset>(_reset);
  }

  CountdownTimer? _countdownTimer;

  Future<void> _start(TimerStart event, Emitter<TimerState> emit) async {
    _countdownTimer?.cancel();
    _countdownTimer = CountdownTimer(
      event.duration,
      aMillisecond,
    );
    _countdownTimer!.listen(
      (countdownTimer) {
        emit(TimerState.ongoing(remainingTime: countdownTimer.remaining));
      },
    );

    if (await _countdownTimer?.waitUntilFinished() ?? false) {
      emit(const TimerState.finished());
    }
  }

  Future<void> _skip(TimerSkip event, Emitter<TimerState> emit) async {
    _countdownTimer?.cancel();
    emit(const TimerState.finished());
  }

  Future<void> _pause(TimerPause event, Emitter<TimerState> emit) async {
    if (state case TimerOngoing(:final remainingTime)) {
      _countdownTimer?.cancel();
      emit(TimerState.paused(remainingTime: remainingTime));
    } else {
      if (state is! TimerOngoing) {
        throw StateError('Cannot pause a timer that is not ongoing');
      }
    }
  }

  Future<void> _resume(TimerResume event, Emitter<TimerState> emit) async {
    if (state case TimerPaused(:final remainingTime)) {
      add(TimerEvent.start(duration: remainingTime));
    } else {
      throw StateError('Cannot resume a timer that is not paused');
    }
  }

  Future<void> _reset(TimerReset event, Emitter<TimerState> emit) async {
    _countdownTimer?.cancel();
    emit(const TimerState.initial());
  }

  @override
  Future<void> close() {
    _countdownTimer?.cancel();
    return super.close();
  }
}
