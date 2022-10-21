import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_todo/features/task/task_list/tasks_card_screen.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final handleAddTask = useCallback(
      () {
        Navigator.pushNamed(context, '/add-user');
      },
      [],
    );

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: 60,
        titleSpacing: 30,
        title: const Text(
          'Notas',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              foregroundColor: Colors.white,
              backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/9060523?s=200&v=4',
              ),
            ),
          ),
        ],
      ),
      body: const TasksCardScreen(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffDF2E59),
        elevation: 0,
        onPressed: handleAddTask,
        child: const Icon(Icons.add, size: 24, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
