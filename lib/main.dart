import 'package:flutter/material.dart';
import 'package:pomotask/get.dart';

import 'package:pomotask/presentation/app.dart';

Future<void> main() async {
  await registerDependencies();
  runApp(App(get()));
}
