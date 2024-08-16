import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:pomodoro/domain/constants/task_priority.dart';
import 'package:pomodoro/presentation/blocs/create_task/create_task_bloc.dart';
import 'package:pomodoro/presentation/constants/operation_status.dart';
import 'package:pomodoro/presentation/localizations/app_localizations.dart';
import 'package:pomodoro/presentation/styles/task_priority_colors.dart';
import 'package:pomodoro/presentation/utils/duration_utils.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CreateTaskBody extends StatefulWidget {
  const CreateTaskBody({
    this.taskId,
    super.key,
  });

  final int? taskId;

  @override
  State<CreateTaskBody> createState() => _CreateTaskBodyState();
}

class _CreateTaskBodyState extends State<CreateTaskBody> {
  final _smKey = GlobalKey<ScaffoldMessengerState>();
  final _formKey = GlobalKey<FormState>();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  var _preloading = true;

  @override
  void initState() {
    super.initState();

    if (widget.taskId == null) {
      setState(() {
        _preloading = false;
      });
    }

    _titleController.addListener(() {
      context
          .read<CreateTaskBloc>()
          .add(CreateTaskEvent.setTitle(_titleController.text));
    });

    _descriptionController.addListener(() {
      context
          .read<CreateTaskBloc>()
          .add(CreateTaskEvent.setDescription(_descriptionController.text));
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    return MultiBlocListener(
      listeners: [
        BlocListener<CreateTaskBloc, CreateTaskState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            switch (state.status) {
              case OperationStatus.success:
                context.maybePop();
              case OperationStatus.error:
                _smKey.currentState!.showSnackBar(
                  SnackBar(
                    content: Text(
                      widget.taskId != null
                          ? tr.couldNotEditTaskFailure
                          : tr.couldNotCreateTaskFailure,
                    ),
                  ),
                );
              case OperationStatus.initial:
              case OperationStatus.loading:
            }
          },
        ),
        BlocListener<CreateTaskBloc, CreateTaskState>(
          listenWhen: (previous, current) => previous.task != current.task,
          listener: (context, state) {
            if (state.task != null) {
              if (_titleController.text != state.title) {
                _titleController.text = state.title;
              }

              if (_descriptionController.text != state.description) {
                _descriptionController.text = state.description;
              }

              setState(() {
                _preloading = false;
              });
            }
          },
        ),
      ],
      child: Skeletonizer(
        enabled: _preloading,
        child: ScaffoldMessenger(
          key: _smKey,
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                widget.taskId != null
                    ? tr.editTaskPageTitle
                    : tr.createTaskPageTitle,
              ),
            ),
            body: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints.loose(const Size.fromWidth(500)),
                child: ListView(
                  // bottom padding is for the fab
                  padding: const EdgeInsets.symmetric(horizontal: 16)
                      .copyWith(bottom: 88),
                  children: [
                    Card(
                      margin: EdgeInsets.zero,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                validator:
                                    RequiredValidator(errorText: '').call,
                                controller: _titleController,
                                decoration: InputDecoration(
                                  errorStyle: const TextStyle(fontSize: 0),
                                  hintText: tr.titleFieldHint,
                                  hintFadeDuration: Duration.zero,
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextField(
                                controller: _descriptionController,
                                decoration: InputDecoration(
                                  hintText: tr.descriptionFieldHint,
                                  hintFadeDuration: Duration.zero,
                                ),
                                maxLines: null,
                                minLines: 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      tr.taskPriorityCardLabel,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    Card(
                      margin: EdgeInsets.zero,
                      child: Column(
                        children: [
                          BlocSelector<CreateTaskBloc, CreateTaskState,
                              TaskPriority>(
                            selector: (state) => state.priority,
                            builder: (context, selectedPriority) => Padding(
                              padding: const EdgeInsets.all(8),
                              child: Wrap(
                                spacing: 8,
                                runSpacing: 8,
                                alignment: WrapAlignment.center,
                                runAlignment: WrapAlignment.center,
                                children: [
                                  for (final priority
                                      in TaskPriority.values)
                                    OutlinedButton(
                                      style: priority == selectedPriority
                                          ? ButtonStyle(
                                              backgroundColor:
                                                  WidgetStatePropertyAll(
                                                priority.color,
                                              ),
                                              foregroundColor:
                                                  WidgetStatePropertyAll(
                                                priority.onColor,
                                              ),
                                              shape: WidgetStatePropertyAll(
                                                StadiumBorder(
                                                  side: BorderSide(
                                                    color: priority.borderColor,
                                                  ),
                                                ),
                                              ),
                                            )
                                          : ButtonStyle(
                                              backgroundColor:
                                                  WidgetStatePropertyAll(
                                                theme.colorScheme
                                                    .surfaceContainerLow,
                                              ),
                                              foregroundColor:
                                                  WidgetStatePropertyAll(
                                                theme.colorScheme.onSurface,
                                              ),
                                              shape: WidgetStatePropertyAll(
                                                StadiumBorder(
                                                  side: BorderSide(
                                                    color: theme
                                                        .colorScheme.onSurface,
                                                  ),
                                                ),
                                              ),
                                            ),
                                      onPressed: () =>
                                          context.read<CreateTaskBloc>().add(
                                                CreateTaskEvent.setPriority(
                                                  priority,
                                                ),
                                              ),
                                      child: Text(
                                        switch (priority) {
                                          TaskPriority.low =>
                                            tr.lowPriorityText,
                                          TaskPriority.medium =>
                                            tr.mediumPriorityText,
                                          TaskPriority.high =>
                                            tr.highPriorityText,
                                        },
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      tr.pomodoroCountCardLabel,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    Card(
                      margin: EdgeInsets.zero,
                      child: ListTile(
                        title:
                            BlocSelector<CreateTaskBloc, CreateTaskState, int>(
                          selector: (state) => state.pomodoroCount,
                          builder: (context, pomodoroCount) =>
                              Text(pomodoroCount.toString()),
                        ),
                        subtitle: BlocSelector<CreateTaskBloc, CreateTaskState,
                            Duration>(
                          selector: (state) => state.estPomodoroDuration,
                          builder: (context, estPomodoroDuration) =>
                              Text(estPomodoroDuration.hhmmssCompact),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () =>
                                  context.read<CreateTaskBloc>().add(
                                        const CreateTaskEvent
                                            .decreasePomodoroCount(),
                                      ),
                              icon: const Icon(Symbols.remove_rounded),
                            ),
                            IconButton(
                              onPressed: () =>
                                  context.read<CreateTaskBloc>().add(
                                        const CreateTaskEvent
                                            .increasePomodoroCount(),
                                      ),
                              icon: const Icon(Symbols.add_rounded),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              heroTag: null,
              onPressed: () {
                if (!_formKey.currentState!.validate()) {
                  return;
                }

                context
                    .read<CreateTaskBloc>()
                    .add(const CreateTaskEvent.perform());
              },
              child: const Icon(Symbols.done_rounded),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }
}
