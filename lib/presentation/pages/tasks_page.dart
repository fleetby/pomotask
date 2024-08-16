import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomodoro/get.dart';
import 'package:pomodoro/presentation/blocs/task_list/task_list_bloc.dart';
import 'package:pomodoro/presentation/widgets/tasks_body.dart';

@RoutePage()
class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => get<TaskListBloc>(),
      child: const TasksBody(),
    );
  }
}
