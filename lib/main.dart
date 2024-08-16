import 'package:flutter/material.dart';
import 'package:pomodoro/get.dart';

import 'package:pomodoro/presentation/app.dart';

Future<void> main() async {
  await registerDependencies();
  runApp(App(get()));
}
