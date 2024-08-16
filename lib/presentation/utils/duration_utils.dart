extension DurationUtils on Duration {
  String get mmss => '${(inMinutes % 60).toString().padLeft(2, '0')}:'
      '${(inSeconds % 60).toString().padLeft(2, '0')}';

  String get hhmmssCompact {
    final inHours = this.inHours;
    return '${inHours > 0 ? '${inHours.toString().padLeft(2, '0')}:' : ''}'
        '${(inMinutes % 60).toString().padLeft(2, '0')}:'
        '${(inSeconds % 60).toString().padLeft(2, '0')}';
  }
}
