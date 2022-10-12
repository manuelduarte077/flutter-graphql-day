import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_todo/features/task/tasks_card_screen.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final handleAddUser = useCallback(
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
          'All notes',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.lightbulb_outline, size: 30),
            onPressed: () {},
          ),
        ],
      ),
      body: const TasksCardScreen(),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xff7885FF),
        elevation: 0,
        onPressed: handleAddUser,
        child: const Icon(Icons.add, size: 24, color: Colors.white),
      ),
    );
  }
}
