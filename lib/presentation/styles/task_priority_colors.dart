import 'package:flutter/material.dart';
import 'package:pomodoro/domain/constants/task_priority.dart';

extension TaskPriorityColors on TaskPriority {
  Color get borderColor => switch (this) {
        TaskPriority.low => const Color(0xff2acd7f),
        TaskPriority.medium => const Color(0xffffcf5b),
        TaskPriority.high => const Color(0xffff5b74),
      };

  Color get color => borderColor.withOpacity(0.5);
  Color get onColor =>
      Color.alphaBlend(borderColor.withOpacity(0.6), Colors.black);
}
