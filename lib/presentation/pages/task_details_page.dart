import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomotask/get.dart';
import 'package:pomotask/presentation/blocs/task_details/task_details_bloc.dart';

import 'package:pomotask/presentation/widgets/task_details_body.dart';

@RoutePage()
class TaskDetailsPage extends StatelessWidget {
  const TaskDetailsPage({
    required this.taskId,
    this.showFab = true,
    super.key,
  });

  final int taskId;
  final bool showFab;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          get<TaskDetailsBloc>()..add(TaskDetailsEvent.load(taskId: taskId)),
      child: TaskDetailsBody(showFab: showFab),
    );
  }
}
