import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// {@template {{name.snakeCase()}}_page}
/// Page for {{name.lowerCase()}}
/// {@endtemplate}
@RoutePage()
class {{name.pascalCase()}}Page extends StatelessWidget {
   
  const {{name.pascalCase()}}Page({super.key});
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => {{name.pascalCase()}}Bloc(),
      child: {{name.pascalCase()}}ViewMobile(),
    );
  }
}
