import 'package:flutter/material.dart';

class {{name.pascalCase()}}ViewMobile extends StatelessWidget {
   
  const {{name.pascalCase()}}ViewMobile({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Text('ViewMobile'),
      ),
    );
  }
}
