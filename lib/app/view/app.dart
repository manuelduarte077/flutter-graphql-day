import 'package:flutter/material.dart';
import 'package:flutter_todo/features/home/home_screen.dart';
import 'package:flutter_todo/features/task/add_new_task_screen.dart';
import 'package:flutter_todo/features/task/task_detail_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
        ),
      ),
      home: const HomeScreen(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/add-user':
            return MaterialPageRoute(builder: (_) => const AddNewTaskScreen());
          case '/task-detail':
            return MaterialPageRoute(
              builder: (_) => TaskDetailScreen(),
            );
          case '/':
          default:
            return MaterialPageRoute(builder: (_) => const HomeScreen());
        }
      },
    );
  }
}
