import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:pomotask/presentation/app_router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: ShellRoute.page,
          initial: true,
          children: [
            AutoRoute(page: HomeRoute.page, initial: true),
            AutoRoute(page: TasksRoute.page),
            AutoRoute(page: SettingsRoute.page),
          ],
        ),
        AutoRoute(page: CreateTaskRoute.page),
        AutoRoute(page: TaskDetailsRoute.page),
      ];
}
