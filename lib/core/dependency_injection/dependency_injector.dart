import 'package:flutter/material.dart';
import 'package:plantilla_vgv/core/dependency_injection/bloc_dependency_injector.dart';

/// {@template dependency_injector}
/// Esta clase se encarga de inyectar las dependencias necesarias 
/// para la aplicación.
/// {@endtemplate}

class DependencyInjector extends StatelessWidget {
  const DependencyInjector({required this.child, super.key});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocDependencyInjector(child: child);
  }
}
