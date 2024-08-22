import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:pomotask/presentation/constants/task_item_action.dart';
import 'package:pomotask/presentation/styles/task_priority_colors.dart';
import 'package:pomotask/presentation/utils/duration_utils.dart';
import 'package:pomotask/presentation/view_models/task_view_model.dart';

class TaskItem extends StatelessWidget {
  const TaskItem(
    this.viewModel, {
    required this.onTap,
    required this.onActionPressed,
    this.action = TaskItemAction.pin,
    this.onRemovePressed,
    super.key,
  });

  final TaskViewModel viewModel;
  final VoidCallback onTap;
  final TaskItemAction action;
  final VoidCallback onActionPressed;
  final VoidCallback? onRemovePressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        onTap: onTap,
        leading: Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: viewModel.priority.color,
            border: Border.all(color: viewModel.priority.borderColor),
          ),
          alignment: Alignment.center,
          child: viewModel.completed
              ? Icon(
                  Symbols.done_rounded,
                  color: viewModel.priority.onColor,
                  size: 16,
                  weight: 800,
                )
              : null,
        ),
        title: Text(
          viewModel.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: viewModel.completed
              ? const TextStyle(
                  decoration: TextDecoration.lineThrough,
                )
              : null,
        ),
        subtitle: Text(
          viewModel.remainingTime.hhmmssCompact,
          style: viewModel.completed
              ? const TextStyle(
                  decoration: TextDecoration.lineThrough,
                )
              : null,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (!viewModel.completed)
              Text('${viewModel.pomodoroPassed}/${viewModel.pomodoroCount}'),
            if (!viewModel.completed)
              IconButton(
                onPressed: onActionPressed,
                icon: switch (action) {
                  TaskItemAction.pin => const Icon(Symbols.play_arrow_rounded),
                  TaskItemAction.unpin => const Icon(Symbols.close_rounded),
                },
              )
            else if (onRemovePressed != null)
              IconButton(
                onPressed: onRemovePressed,
                icon: const Icon(Symbols.close_rounded),
              ),
          ],
        ),
      ),
    );
  }
}
