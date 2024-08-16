import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:pomodoro/data/tables/tasks_table.dart';
import 'package:pomodoro/domain/constants/task_priority.dart';

part 'app_db.g.dart';

@singleton
@DriftDatabase(tables: [TasksTable])
class AppDb extends _$AppDb {
  AppDb()
      : super(
          driftDatabase(
            name: 'pomodoro',
            web: DriftWebOptions(
              sqlite3Wasm: Uri.parse('sqlite3.wasm'),
              driftWorker: Uri.parse('drift_worker.js'),
            ),
          ),
        );

  @override
  int get schemaVersion => 1;
}
