import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pomodoro/constants/pomodoro_timer_type.dart';

part 'pomodoro_event.dart';
part 'pomodoro_state.dart';
part 'pomodoro_bloc.freezed.dart';

class PomodoroBloc extends Bloc<PomodoroEvent, PomodoroState> {
  PomodoroBloc() : super(const PomodoroState()) {
    on<PomodoroChangeTimerType>(_changeTimerType);
    on<PomodoroIncreaseTimerCount>(_increaseTimerCount);
    on<PomodoroReset>(_reset);
  }

  Future<void> _changeTimerType(
    PomodoroChangeTimerType event,
    Emitter<PomodoroState> emit,
  ) async {
    emit(PomodoroState(timerType: event.timerType));
  }

  Future<void> _increaseTimerCount(
    PomodoroIncreaseTimerCount event,
    Emitter<PomodoroState> emit,
  ) async {
    emit(PomodoroState(
      timerType: _getNextTimerType(),
      timerCount: {
        ...state.timerCount,
        state.timerType: state.timerCount[state.timerType]! + 1
      },
    ));
  }

  Future<void> _reset(
    PomodoroReset event,
    Emitter<PomodoroState> emit,
  ) async {
    emit(const PomodoroState());
  }

  /// Every 3 pomodoros, the next timer type is long break.
  PomodoroTimerType _getNextTimerType() {
    if (state.timerType == PomodoroTimerType.pomodoro) {
      if (state.currentTimerTypeCount % 3 == 0) {
        return PomodoroTimerType.longBreak;
      } else {
        return PomodoroTimerType.shortBreak;
      }
    } else {
      return PomodoroTimerType.pomodoro;
    }
  }
}
