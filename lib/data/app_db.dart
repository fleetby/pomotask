import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:pomotask/data/tables/tasks_table.dart';
import 'package:pomotask/domain/constants/task_priority.dart';

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
