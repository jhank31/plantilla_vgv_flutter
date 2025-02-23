import 'package:auto_route/auto_route.dart';
import 'package:plantilla_vgv/core/router/app_router.gr.dart';

/// {@template app_router}
/// The router for the application.
/// {@endtemplate}

@AutoRouterConfig(
  replaceInRouteName: 'Screen|Page,Route',
)
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        /// Ruta inicial de la aplicación que contiene los tabs del NavBar
        /// y las rutas que hay dentro de cada tab
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
      ];
}
