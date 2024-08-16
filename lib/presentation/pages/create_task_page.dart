import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomodoro/get.dart';
import 'package:pomodoro/presentation/blocs/create_task/create_task_bloc.dart';

import 'package:pomodoro/presentation/widgets/create_task_body.dart';

@RoutePage()
class CreateTaskPage extends StatelessWidget {
  const CreateTaskPage({
    this.taskId,
    super.key,
  });

  final int? taskId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = get<CreateTaskBloc>();
        if (taskId != null) {
          bloc.add(CreateTaskEvent.load(taskId: taskId!));
        }

        return bloc;
      },
      child: const CreateTaskBody(),
    );
  }
}
