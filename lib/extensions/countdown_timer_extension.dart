import 'package:quiver/async.dart';

extension CountdownTimerExtension on CountdownTimer {
  static const _thresholdMS = 4;

  bool get isFinished => remaining.inMilliseconds < _thresholdMS;

  Future<bool> waitUntilFinished() async => (await last).isFinished;
}
