// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pomotask/data/app_db.dart' as _i869;
import 'package:pomotask/data/modules/shared_preferences_module.dart' as _i39;
import 'package:pomotask/data/repositories/settings_repository_impl.dart'
    as _i284;
import 'package:pomotask/data/repositories/tasks_repository_impl.dart' as _i664;
import 'package:pomotask/domain/repositories/settings_repository.dart' as _i529;
import 'package:pomotask/domain/repositories/tasks_repository.dart' as _i204;
import 'package:pomotask/domain/use_cases/create_task_use_case.dart' as _i478;
import 'package:pomotask/domain/use_cases/delete_completed_tasks_use_case.dart'
    as _i692;
import 'package:pomotask/domain/use_cases/delete_task_use_case.dart' as _i873;
import 'package:pomotask/domain/use_cases/get_est_pomodoro_duration_use_case.dart'
    as _i368;
import 'package:pomotask/domain/use_cases/get_next_pomodoro_timer_type_use_case.dart'
    as _i405;
import 'package:pomotask/domain/use_cases/get_sound_effects_enabled_use_case.dart'
    as _i667;
import 'package:pomotask/domain/use_cases/get_task_stream_use_case.dart'
    as _i761;
import 'package:pomotask/domain/use_cases/get_task_use_case.dart' as _i247;
import 'package:pomotask/domain/use_cases/get_tasks_stream_use_case.dart'
    as _i586;
import 'package:pomotask/domain/use_cases/set_sound_effects_enabled_use_case.dart'
    as _i188;
import 'package:pomotask/domain/use_cases/update_task_use_case.dart' as _i543;
import 'package:pomotask/presentation/app_router.dart' as _i207;
import 'package:pomotask/presentation/blocs/create_task/create_task_bloc.dart'
    as _i629;
import 'package:pomotask/presentation/blocs/pomodoro/pomodoro_bloc.dart'
    as _i335;
import 'package:pomotask/presentation/blocs/settings/settings_bloc.dart'
    as _i513;
import 'package:pomotask/presentation/blocs/task_details/task_details_bloc.dart'
    as _i413;
import 'package:pomotask/presentation/blocs/task_list/task_list_bloc.dart'
    as _i460;
import 'package:pomotask/presentation/blocs/timer/timer_bloc.dart' as _i1037;
import 'package:pomotask/presentation/mappers/task_model_mapper.dart' as _i151;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final sharedPreferencesModule = _$SharedPreferencesModule();
    gh.factory<_i1037.TimerBloc>(() => _i1037.TimerBloc());
    gh.singleton<_i869.AppDb>(() => _i869.AppDb());
    gh.singleton<_i460.SharedPreferencesAsync>(
        () => sharedPreferencesModule.sharedPreferences);
    gh.singleton<_i207.AppRouter>(() => _i207.AppRouter());
    gh.singleton<_i204.TasksRepository>(
        () => _i664.TasksRepositoryImpl(gh<_i869.AppDb>()));
    gh.singleton<_i529.SettingsRepository>(
        () => _i284.SettingsRepositoryImpl(gh<_i460.SharedPreferencesAsync>()));
    gh.singleton<_i478.CreateTaskUseCase>(
        () => _i478.CreateTaskUseCase(gh<_i204.TasksRepository>()));
    gh.singleton<_i692.DeleteCompletedTasksUseCase>(
        () => _i692.DeleteCompletedTasksUseCase(gh<_i204.TasksRepository>()));
    gh.singleton<_i873.DeleteTaskUseCase>(
        () => _i873.DeleteTaskUseCase(gh<_i204.TasksRepository>()));
    gh.singleton<_i586.GetTasksStreamUseCase>(
        () => _i586.GetTasksStreamUseCase(gh<_i204.TasksRepository>()));
    gh.singleton<_i761.GetTaskStreamUseCase>(
        () => _i761.GetTaskStreamUseCase(gh<_i204.TasksRepository>()));
    gh.singleton<_i247.GetTaskUseCase>(
        () => _i247.GetTaskUseCase(gh<_i204.TasksRepository>()));
    gh.singleton<_i543.UpdateTaskUseCase>(
        () => _i543.UpdateTaskUseCase(gh<_i204.TasksRepository>()));
    gh.factory<_i413.TaskDetailsBloc>(() => _i413.TaskDetailsBloc(
          gh<_i873.DeleteTaskUseCase>(),
          gh<_i761.GetTaskStreamUseCase>(),
          gh<_i543.UpdateTaskUseCase>(),
        ));
    gh.singleton<_i368.GetEstPomodoroDurationUseCase>(() =>
        _i368.GetEstPomodoroDurationUseCase(gh<_i529.SettingsRepository>()));
    gh.singleton<_i405.GetNextPomodoroTimerTypeUseCase>(() =>
        _i405.GetNextPomodoroTimerTypeUseCase(gh<_i529.SettingsRepository>()));
    gh.singleton<_i667.GetSoundEffectsEnabledUseCase>(() =>
        _i667.GetSoundEffectsEnabledUseCase(gh<_i529.SettingsRepository>()));
    gh.singleton<_i188.SetSoundEffectsEnabledUseCase>(() =>
        _i188.SetSoundEffectsEnabledUseCase(gh<_i529.SettingsRepository>()));
    gh.singleton<_i151.TaskModelMapper>(
        () => _i151.TaskModelMapper(gh<_i368.GetEstPomodoroDurationUseCase>()));
    gh.factory<_i513.SettingsBloc>(() => _i513.SettingsBloc(
          gh<_i667.GetSoundEffectsEnabledUseCase>(),
          gh<_i188.SetSoundEffectsEnabledUseCase>(),
        ));
    gh.factory<_i629.CreateTaskBloc>(() => _i629.CreateTaskBloc(
          gh<_i478.CreateTaskUseCase>(),
          gh<_i368.GetEstPomodoroDurationUseCase>(),
          gh<_i247.GetTaskUseCase>(),
          gh<_i543.UpdateTaskUseCase>(),
        ));
    gh.factory<_i335.PomodoroBloc>(() => _i335.PomodoroBloc(
          gh<_i761.GetTaskStreamUseCase>(),
          gh<_i543.UpdateTaskUseCase>(),
          gh<_i405.GetNextPomodoroTimerTypeUseCase>(),
          gh<_i151.TaskModelMapper>(),
        ));
    gh.factory<_i460.TaskListBloc>(() => _i460.TaskListBloc(
          gh<_i586.GetTasksStreamUseCase>(),
          gh<_i873.DeleteTaskUseCase>(),
          gh<_i692.DeleteCompletedTasksUseCase>(),
          gh<_i151.TaskModelMapper>(),
        ));
    return this;
  }
}

class _$SharedPreferencesModule extends _i39.SharedPreferencesModule {}
