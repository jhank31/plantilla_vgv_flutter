import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plantilla_vgv/core/app_life_cycle_listener/listener/app_life_cycle_listener.dart';
import 'package:plantilla_vgv/core/dependency_injection/dependency_injector.dart';
import 'package:plantilla_vgv/core/router/app_router.dart';
import 'package:plantilla_vgv/core/theming/core/bloc/bloc/theme_bloc.dart';
import 'package:plantilla_vgv/l10n/arb/app_localizations.dart';

//! se crea una instancia de AppRouter afuera del build para evitar
//! que se cree una nueva instancia cada vez que se llama al build
//! y se evita que se pierda el estado de la navegación
final appRouter = AppRouter();

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return const DependencyInjector(
      child: AppLifeCycleListener(child: _RouterWidget()),
    );
  }
}

class _RouterWidget extends StatelessWidget {
  const _RouterWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: state.theme,
          routerConfig: appRouter.config(),
        );
      },
    );
  }
}
