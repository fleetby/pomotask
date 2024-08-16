import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:pomodoro/presentation/app_router.gr.dart';
import 'package:pomodoro/presentation/blocs/pomodoro/pomodoro_bloc.dart';
import 'package:pomodoro/presentation/blocs/task_list/task_list_bloc.dart';
import 'package:pomodoro/presentation/localizations/app_localizations.dart';
import 'package:pomodoro/presentation/widgets/task_item.dart';

class TasksBody extends StatelessWidget {
  const TasksBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.taskListPageTitle),
      ),
      body: BlocBuilder<TaskListBloc, TaskListState>(
        builder: (context, state) {
          if (state.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.tasks.isEmpty) {
            return Center(
              child: Container(
                padding: const EdgeInsets.all(16),
                constraints: const BoxConstraints(maxWidth: 500),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // const Icon(
                    //   Symbols.sentiment_stressed_rounded,
                    //   size: 80,
                    // ),
                    // const SizedBox(height: 4),
                    Text(
                      tr.emptyTaskListPlaceholderText,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            );
          }

          return Column(
            children: [
              if (state.tasks.isNotEmpty &&
                  state.indexOfLastNonCompletedTask == null)
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: _CompletedTasksRow(),
                ),
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  separatorBuilder: (context, index) {
                    if (index == state.indexOfLastNonCompletedTask) {
                      return const _CompletedTasksRow();
                    }
                    return const SizedBox(height: 8);
                  },
                  itemCount: state.tasks.length,
                  itemBuilder: (context, index) {
                    final task = state.tasks[index];
                    return TaskItem(
                      task,
                      onTap: () =>
                          TaskDetailsRoute(taskId: task.id).push<void>(context),
                      onActionPressed: () {
                        context
                            .read<PomodoroBloc>()
                            .add(PomodoroEvent.pinTask(taskId: task.id));
                        const HomeRoute().navigate(context);
                      },
                      onRemovePressed: () => context
                          .read<TaskListBloc>()
                          .add(TaskListEvent.delete(taskId: task.id)),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        onPressed: () => CreateTaskRoute().push<void>(context),
        child: const Icon(Symbols.add_rounded),
      ),
    );
  }
}

class _CompletedTasksRow extends StatelessWidget {
  const _CompletedTasksRow();

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(tr.completedTasksHeader),
          const SizedBox(width: 16),
          TextButton(
            onPressed: () => context
                .read<TaskListBloc>()
                .add(const TaskListEvent.deleteCompleted()),
            child: Text(tr.clearAction),
          ),
        ],
      ),
    );
  }
}
