// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:pomotask/presentation/pages/create_task_page.dart' as _i1;
import 'package:pomotask/presentation/pages/home_page.dart' as _i2;
import 'package:pomotask/presentation/pages/settings_page.dart' as _i3;
import 'package:pomotask/presentation/pages/shell_page.dart' as _i4;
import 'package:pomotask/presentation/pages/task_details_page.dart' as _i5;
import 'package:pomotask/presentation/pages/tasks_page.dart' as _i6;

/// generated route for
/// [_i1.CreateTaskPage]
class CreateTaskRoute extends _i7.PageRouteInfo<CreateTaskRouteArgs> {
  CreateTaskRoute({
    int? taskId,
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          CreateTaskRoute.name,
          args: CreateTaskRouteArgs(
            taskId: taskId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateTaskRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateTaskRouteArgs>(
          orElse: () => const CreateTaskRouteArgs());
      return _i1.CreateTaskPage(
        taskId: args.taskId,
        key: args.key,
      );
    },
  );
}

class CreateTaskRouteArgs {
  const CreateTaskRouteArgs({
    this.taskId,
    this.key,
  });

  final int? taskId;

  final _i8.Key? key;

  @override
  String toString() {
    return 'CreateTaskRouteArgs{taskId: $taskId, key: $key}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.SettingsPage]
class SettingsRoute extends _i7.PageRouteInfo<void> {
  const SettingsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.SettingsPage();
    },
  );
}

/// generated route for
/// [_i4.ShellPage]
class ShellRoute extends _i7.PageRouteInfo<void> {
  const ShellRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShellRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.ShellPage();
    },
  );
}

/// generated route for
/// [_i5.TaskDetailsPage]
class TaskDetailsRoute extends _i7.PageRouteInfo<TaskDetailsRouteArgs> {
  TaskDetailsRoute({
    required int taskId,
    bool showFab = true,
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          TaskDetailsRoute.name,
          args: TaskDetailsRouteArgs(
            taskId: taskId,
            showFab: showFab,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'TaskDetailsRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TaskDetailsRouteArgs>();
      return _i5.TaskDetailsPage(
        taskId: args.taskId,
        showFab: args.showFab,
        key: args.key,
      );
    },
  );
}

class TaskDetailsRouteArgs {
  const TaskDetailsRouteArgs({
    required this.taskId,
    this.showFab = true,
    this.key,
  });

  final int taskId;

  final bool showFab;

  final _i8.Key? key;

  @override
  String toString() {
    return 'TaskDetailsRouteArgs{taskId: $taskId, showFab: $showFab, key: $key}';
  }
}

/// generated route for
/// [_i6.TasksPage]
class TasksRoute extends _i7.PageRouteInfo<void> {
  const TasksRoute({List<_i7.PageRouteInfo>? children})
      : super(
          TasksRoute.name,
          initialChildren: children,
        );

  static const String name = 'TasksRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.TasksPage();
    },
  );
}
