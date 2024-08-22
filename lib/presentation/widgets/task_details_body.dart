import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:pomotask/domain/models/task_model.dart';
import 'package:pomotask/presentation/app_router.gr.dart';
import 'package:pomotask/presentation/blocs/pomodoro/pomodoro_bloc.dart';
import 'package:pomotask/presentation/blocs/task_details/task_details_bloc.dart';
import 'package:pomotask/presentation/constants/constraints.dart';
import 'package:pomotask/presentation/localizations/app_localizations.dart';
import 'package:skeletonizer/skeletonizer.dart';

class TaskDetailsBody extends StatelessWidget {
  const TaskDetailsBody({
    required this.showFab,
    super.key,
  });

  final bool showFab;

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return BlocListener<TaskDetailsBloc, TaskDetailsState>(
      listener: (context, state) {
        if (state is TaskDetailsDeleted) {
          context.maybePop();
        }
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar.medium(
              floating: true,
              title: BlocSelector<TaskDetailsBloc, TaskDetailsState, String?>(
                selector: (state) =>
                    state.mapOrNull(loaded: (state) => state.task.title),
                builder: (context, title) => Skeletonizer(
                  enabled: title == null,
                  child: Text(title ?? 'Task title'),
                ),
              ),
              actions: [
                IconButton(
                  constraints: actionConstraints,
                  onPressed: () {
                    final taskId = context
                        .read<TaskDetailsBloc>()
                        .state
                        .mapOrNull(loaded: (state) => state.task.id);

                    if (taskId == null) {
                      return;
                    }

                    CreateTaskRoute(taskId: taskId).push<void>(context);
                  },
                  icon: const Icon(Icons.edit_rounded),
                ),
                IconButton(
                  constraints: actionConstraints,
                  onPressed: () => context
                      .read<TaskDetailsBloc>()
                      .add(const TaskDetailsEvent.delete()),
                  icon: const Icon(Icons.delete_rounded),
                ),
              ],
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(
                child: BlocSelector<TaskDetailsBloc, TaskDetailsState, String?>(
                  selector: (state) => state.mapOrNull(
                    loaded: (state) => state.task.description,
                  ),
                  builder: (context, description) => Skeletonizer(
                    enabled: description == null,
                    child: Text(description ?? 'Task description'),
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: AnimatedSwitcher(
          duration: kThemeChangeDuration,
          transitionBuilder: (child, animation) => ScaleTransition(
            scale: animation,
            child: child,
          ),
          child: BlocSelector<TaskDetailsBloc, TaskDetailsState, TaskModel?>(
            selector: (state) => state.mapOrNull(loaded: (state) => state.task),
            builder: (context, task) {
              if (task == null || !showFab) {
                return const SizedBox.shrink();
              }

              if (task.completed) {
                return FloatingActionButton.extended(
                  heroTag: null,
                  onPressed: () => context
                      .read<TaskDetailsBloc>()
                      .add(const TaskDetailsEvent.startOver()),
                  icon: const Icon(Symbols.refresh_rounded),
                  label: Text(tr.startOverAction),
                );
              } else {
                return FloatingActionButton(
                  heroTag: null,
                  onPressed: () async {
                    context
                        .read<PomodoroBloc>()
                        .add(PomodoroEvent.pinTask(taskId: task.id));
                    // FIXME the transition is not smooth
                    await const HomeRoute().navigate(context);
                  },
                  child: const Icon(Symbols.play_arrow_rounded),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
