// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// ignore_for_file: type=lint
class $TasksTableTable extends TasksTable
    with TableInfo<$TasksTableTable, TasksTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TasksTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _priorityMeta =
      const VerificationMeta('priority');
  @override
  late final GeneratedColumnWithTypeConverter<TaskPriority, int> priority =
      GeneratedColumn<int>('priority', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<TaskPriority>($TasksTableTable.$converterpriority);
  static const VerificationMeta _pomodoroCountMeta =
      const VerificationMeta('pomodoroCount');
  @override
  late final GeneratedColumn<int> pomodoroCount = GeneratedColumn<int>(
      'pomodoro_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _pomodoroPassedMeta =
      const VerificationMeta('pomodoroPassed');
  @override
  late final GeneratedColumn<int> pomodoroPassed = GeneratedColumn<int>(
      'pomodoro_passed', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _shortBreaksPassedMeta =
      const VerificationMeta('shortBreaksPassed');
  @override
  late final GeneratedColumn<int> shortBreaksPassed = GeneratedColumn<int>(
      'short_breaks_passed', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _longBreaksPassedMeta =
      const VerificationMeta('longBreaksPassed');
  @override
  late final GeneratedColumn<int> longBreaksPassed = GeneratedColumn<int>(
      'long_breaks_passed', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _completedMeta =
      const VerificationMeta('completed');
  @override
  late final GeneratedColumn<bool> completed = GeneratedColumn<bool>(
      'completed', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("completed" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        description,
        priority,
        pomodoroCount,
        pomodoroPassed,
        shortBreaksPassed,
        longBreaksPassed,
        completed
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tasks_table';
  @override
  VerificationContext validateIntegrity(Insertable<TasksTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    context.handle(_priorityMeta, const VerificationResult.success());
    if (data.containsKey('pomodoro_count')) {
      context.handle(
          _pomodoroCountMeta,
          pomodoroCount.isAcceptableOrUnknown(
              data['pomodoro_count']!, _pomodoroCountMeta));
    } else if (isInserting) {
      context.missing(_pomodoroCountMeta);
    }
    if (data.containsKey('pomodoro_passed')) {
      context.handle(
          _pomodoroPassedMeta,
          pomodoroPassed.isAcceptableOrUnknown(
              data['pomodoro_passed']!, _pomodoroPassedMeta));
    } else if (isInserting) {
      context.missing(_pomodoroPassedMeta);
    }
    if (data.containsKey('short_breaks_passed')) {
      context.handle(
          _shortBreaksPassedMeta,
          shortBreaksPassed.isAcceptableOrUnknown(
              data['short_breaks_passed']!, _shortBreaksPassedMeta));
    } else if (isInserting) {
      context.missing(_shortBreaksPassedMeta);
    }
    if (data.containsKey('long_breaks_passed')) {
      context.handle(
          _longBreaksPassedMeta,
          longBreaksPassed.isAcceptableOrUnknown(
              data['long_breaks_passed']!, _longBreaksPassedMeta));
    } else if (isInserting) {
      context.missing(_longBreaksPassedMeta);
    }
    if (data.containsKey('completed')) {
      context.handle(_completedMeta,
          completed.isAcceptableOrUnknown(data['completed']!, _completedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TasksTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TasksTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      priority: $TasksTableTable.$converterpriority.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}priority'])!),
      pomodoroCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pomodoro_count'])!,
      pomodoroPassed: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pomodoro_passed'])!,
      shortBreaksPassed: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}short_breaks_passed'])!,
      longBreaksPassed: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}long_breaks_passed'])!,
      completed: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}completed'])!,
    );
  }

  @override
  $TasksTableTable createAlias(String alias) {
    return $TasksTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<TaskPriority, int, int> $converterpriority =
      const EnumIndexConverter<TaskPriority>(TaskPriority.values);
}

class TasksTableData extends DataClass implements Insertable<TasksTableData> {
  final int id;
  final String title;
  final String description;
  final TaskPriority priority;
  final int pomodoroCount;
  final int pomodoroPassed;
  final int shortBreaksPassed;
  final int longBreaksPassed;
  final bool completed;
  const TasksTableData(
      {required this.id,
      required this.title,
      required this.description,
      required this.priority,
      required this.pomodoroCount,
      required this.pomodoroPassed,
      required this.shortBreaksPassed,
      required this.longBreaksPassed,
      required this.completed});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    {
      map['priority'] =
          Variable<int>($TasksTableTable.$converterpriority.toSql(priority));
    }
    map['pomodoro_count'] = Variable<int>(pomodoroCount);
    map['pomodoro_passed'] = Variable<int>(pomodoroPassed);
    map['short_breaks_passed'] = Variable<int>(shortBreaksPassed);
    map['long_breaks_passed'] = Variable<int>(longBreaksPassed);
    map['completed'] = Variable<bool>(completed);
    return map;
  }

  TasksTableCompanion toCompanion(bool nullToAbsent) {
    return TasksTableCompanion(
      id: Value(id),
      title: Value(title),
      description: Value(description),
      priority: Value(priority),
      pomodoroCount: Value(pomodoroCount),
      pomodoroPassed: Value(pomodoroPassed),
      shortBreaksPassed: Value(shortBreaksPassed),
      longBreaksPassed: Value(longBreaksPassed),
      completed: Value(completed),
    );
  }

  factory TasksTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TasksTableData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      priority: $TasksTableTable.$converterpriority
          .fromJson(serializer.fromJson<int>(json['priority'])),
      pomodoroCount: serializer.fromJson<int>(json['pomodoroCount']),
      pomodoroPassed: serializer.fromJson<int>(json['pomodoroPassed']),
      shortBreaksPassed: serializer.fromJson<int>(json['shortBreaksPassed']),
      longBreaksPassed: serializer.fromJson<int>(json['longBreaksPassed']),
      completed: serializer.fromJson<bool>(json['completed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'priority': serializer
          .toJson<int>($TasksTableTable.$converterpriority.toJson(priority)),
      'pomodoroCount': serializer.toJson<int>(pomodoroCount),
      'pomodoroPassed': serializer.toJson<int>(pomodoroPassed),
      'shortBreaksPassed': serializer.toJson<int>(shortBreaksPassed),
      'longBreaksPassed': serializer.toJson<int>(longBreaksPassed),
      'completed': serializer.toJson<bool>(completed),
    };
  }

  TasksTableData copyWith(
          {int? id,
          String? title,
          String? description,
          TaskPriority? priority,
          int? pomodoroCount,
          int? pomodoroPassed,
          int? shortBreaksPassed,
          int? longBreaksPassed,
          bool? completed}) =>
      TasksTableData(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        priority: priority ?? this.priority,
        pomodoroCount: pomodoroCount ?? this.pomodoroCount,
        pomodoroPassed: pomodoroPassed ?? this.pomodoroPassed,
        shortBreaksPassed: shortBreaksPassed ?? this.shortBreaksPassed,
        longBreaksPassed: longBreaksPassed ?? this.longBreaksPassed,
        completed: completed ?? this.completed,
      );
  TasksTableData copyWithCompanion(TasksTableCompanion data) {
    return TasksTableData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description:
          data.description.present ? data.description.value : this.description,
      priority: data.priority.present ? data.priority.value : this.priority,
      pomodoroCount: data.pomodoroCount.present
          ? data.pomodoroCount.value
          : this.pomodoroCount,
      pomodoroPassed: data.pomodoroPassed.present
          ? data.pomodoroPassed.value
          : this.pomodoroPassed,
      shortBreaksPassed: data.shortBreaksPassed.present
          ? data.shortBreaksPassed.value
          : this.shortBreaksPassed,
      longBreaksPassed: data.longBreaksPassed.present
          ? data.longBreaksPassed.value
          : this.longBreaksPassed,
      completed: data.completed.present ? data.completed.value : this.completed,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TasksTableData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('priority: $priority, ')
          ..write('pomodoroCount: $pomodoroCount, ')
          ..write('pomodoroPassed: $pomodoroPassed, ')
          ..write('shortBreaksPassed: $shortBreaksPassed, ')
          ..write('longBreaksPassed: $longBreaksPassed, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      title,
      description,
      priority,
      pomodoroCount,
      pomodoroPassed,
      shortBreaksPassed,
      longBreaksPassed,
      completed);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TasksTableData &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.priority == this.priority &&
          other.pomodoroCount == this.pomodoroCount &&
          other.pomodoroPassed == this.pomodoroPassed &&
          other.shortBreaksPassed == this.shortBreaksPassed &&
          other.longBreaksPassed == this.longBreaksPassed &&
          other.completed == this.completed);
}

class TasksTableCompanion extends UpdateCompanion<TasksTableData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> description;
  final Value<TaskPriority> priority;
  final Value<int> pomodoroCount;
  final Value<int> pomodoroPassed;
  final Value<int> shortBreaksPassed;
  final Value<int> longBreaksPassed;
  final Value<bool> completed;
  const TasksTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.priority = const Value.absent(),
    this.pomodoroCount = const Value.absent(),
    this.pomodoroPassed = const Value.absent(),
    this.shortBreaksPassed = const Value.absent(),
    this.longBreaksPassed = const Value.absent(),
    this.completed = const Value.absent(),
  });
  TasksTableCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String description,
    required TaskPriority priority,
    required int pomodoroCount,
    required int pomodoroPassed,
    required int shortBreaksPassed,
    required int longBreaksPassed,
    this.completed = const Value.absent(),
  })  : title = Value(title),
        description = Value(description),
        priority = Value(priority),
        pomodoroCount = Value(pomodoroCount),
        pomodoroPassed = Value(pomodoroPassed),
        shortBreaksPassed = Value(shortBreaksPassed),
        longBreaksPassed = Value(longBreaksPassed);
  static Insertable<TasksTableData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<int>? priority,
    Expression<int>? pomodoroCount,
    Expression<int>? pomodoroPassed,
    Expression<int>? shortBreaksPassed,
    Expression<int>? longBreaksPassed,
    Expression<bool>? completed,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (priority != null) 'priority': priority,
      if (pomodoroCount != null) 'pomodoro_count': pomodoroCount,
      if (pomodoroPassed != null) 'pomodoro_passed': pomodoroPassed,
      if (shortBreaksPassed != null) 'short_breaks_passed': shortBreaksPassed,
      if (longBreaksPassed != null) 'long_breaks_passed': longBreaksPassed,
      if (completed != null) 'completed': completed,
    });
  }

  TasksTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? description,
      Value<TaskPriority>? priority,
      Value<int>? pomodoroCount,
      Value<int>? pomodoroPassed,
      Value<int>? shortBreaksPassed,
      Value<int>? longBreaksPassed,
      Value<bool>? completed}) {
    return TasksTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      priority: priority ?? this.priority,
      pomodoroCount: pomodoroCount ?? this.pomodoroCount,
      pomodoroPassed: pomodoroPassed ?? this.pomodoroPassed,
      shortBreaksPassed: shortBreaksPassed ?? this.shortBreaksPassed,
      longBreaksPassed: longBreaksPassed ?? this.longBreaksPassed,
      completed: completed ?? this.completed,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (priority.present) {
      map['priority'] = Variable<int>(
          $TasksTableTable.$converterpriority.toSql(priority.value));
    }
    if (pomodoroCount.present) {
      map['pomodoro_count'] = Variable<int>(pomodoroCount.value);
    }
    if (pomodoroPassed.present) {
      map['pomodoro_passed'] = Variable<int>(pomodoroPassed.value);
    }
    if (shortBreaksPassed.present) {
      map['short_breaks_passed'] = Variable<int>(shortBreaksPassed.value);
    }
    if (longBreaksPassed.present) {
      map['long_breaks_passed'] = Variable<int>(longBreaksPassed.value);
    }
    if (completed.present) {
      map['completed'] = Variable<bool>(completed.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TasksTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('priority: $priority, ')
          ..write('pomodoroCount: $pomodoroCount, ')
          ..write('pomodoroPassed: $pomodoroPassed, ')
          ..write('shortBreaksPassed: $shortBreaksPassed, ')
          ..write('longBreaksPassed: $longBreaksPassed, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  $AppDbManager get managers => $AppDbManager(this);
  late final $TasksTableTable tasksTable = $TasksTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tasksTable];
}

typedef $$TasksTableTableCreateCompanionBuilder = TasksTableCompanion Function({
  Value<int> id,
  required String title,
  required String description,
  required TaskPriority priority,
  required int pomodoroCount,
  required int pomodoroPassed,
  required int shortBreaksPassed,
  required int longBreaksPassed,
  Value<bool> completed,
});
typedef $$TasksTableTableUpdateCompanionBuilder = TasksTableCompanion Function({
  Value<int> id,
  Value<String> title,
  Value<String> description,
  Value<TaskPriority> priority,
  Value<int> pomodoroCount,
  Value<int> pomodoroPassed,
  Value<int> shortBreaksPassed,
  Value<int> longBreaksPassed,
  Value<bool> completed,
});

class $$TasksTableTableTableManager extends RootTableManager<
    _$AppDb,
    $TasksTableTable,
    TasksTableData,
    $$TasksTableTableFilterComposer,
    $$TasksTableTableOrderingComposer,
    $$TasksTableTableCreateCompanionBuilder,
    $$TasksTableTableUpdateCompanionBuilder> {
  $$TasksTableTableTableManager(_$AppDb db, $TasksTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TasksTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$TasksTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<TaskPriority> priority = const Value.absent(),
            Value<int> pomodoroCount = const Value.absent(),
            Value<int> pomodoroPassed = const Value.absent(),
            Value<int> shortBreaksPassed = const Value.absent(),
            Value<int> longBreaksPassed = const Value.absent(),
            Value<bool> completed = const Value.absent(),
          }) =>
              TasksTableCompanion(
            id: id,
            title: title,
            description: description,
            priority: priority,
            pomodoroCount: pomodoroCount,
            pomodoroPassed: pomodoroPassed,
            shortBreaksPassed: shortBreaksPassed,
            longBreaksPassed: longBreaksPassed,
            completed: completed,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
            required String description,
            required TaskPriority priority,
            required int pomodoroCount,
            required int pomodoroPassed,
            required int shortBreaksPassed,
            required int longBreaksPassed,
            Value<bool> completed = const Value.absent(),
          }) =>
              TasksTableCompanion.insert(
            id: id,
            title: title,
            description: description,
            priority: priority,
            pomodoroCount: pomodoroCount,
            pomodoroPassed: pomodoroPassed,
            shortBreaksPassed: shortBreaksPassed,
            longBreaksPassed: longBreaksPassed,
            completed: completed,
          ),
        ));
}

class $$TasksTableTableFilterComposer
    extends FilterComposer<_$AppDb, $TasksTableTable> {
  $$TasksTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<TaskPriority, TaskPriority, int>
      get priority => $state.composableBuilder(
          column: $state.table.priority,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<int> get pomodoroCount => $state.composableBuilder(
      column: $state.table.pomodoroCount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get pomodoroPassed => $state.composableBuilder(
      column: $state.table.pomodoroPassed,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get shortBreaksPassed => $state.composableBuilder(
      column: $state.table.shortBreaksPassed,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get longBreaksPassed => $state.composableBuilder(
      column: $state.table.longBreaksPassed,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get completed => $state.composableBuilder(
      column: $state.table.completed,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$TasksTableTableOrderingComposer
    extends OrderingComposer<_$AppDb, $TasksTableTable> {
  $$TasksTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get priority => $state.composableBuilder(
      column: $state.table.priority,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get pomodoroCount => $state.composableBuilder(
      column: $state.table.pomodoroCount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get pomodoroPassed => $state.composableBuilder(
      column: $state.table.pomodoroPassed,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get shortBreaksPassed => $state.composableBuilder(
      column: $state.table.shortBreaksPassed,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get longBreaksPassed => $state.composableBuilder(
      column: $state.table.longBreaksPassed,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get completed => $state.composableBuilder(
      column: $state.table.completed,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $AppDbManager {
  final _$AppDb _db;
  $AppDbManager(this._db);
  $$TasksTableTableTableManager get tasksTable =>
      $$TasksTableTableTableManager(_db, _db.tasksTable);
}
