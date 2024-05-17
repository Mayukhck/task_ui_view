import 'package:flutter/material.dart';
import 'package:task_ui_screen/src/features/login/presentation/login_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ui Demo',
      home: LoginView(),
    );
  }
}
