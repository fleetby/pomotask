import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import 'package:pomodoro/presentation/widgets/settings_body.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingsBody();
  }
}
