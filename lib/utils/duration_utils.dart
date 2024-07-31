extension DurationUtils on Duration {
  String get mmss =>
      '${(inMinutes % 60).toString().padLeft(2, '0')}:${(inSeconds % 60).toString().padLeft(2, '0')}';
}
