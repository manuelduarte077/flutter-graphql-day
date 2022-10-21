import 'package:flutter/material.dart';
import 'package:flutter_todo/commons_widget/drawer_menu.dart';
import 'package:flutter_todo/features/task/task_list/tasks_card_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181920),
      appBar: AppBar(
        backgroundColor: const Color(0xff181920),
        scrolledUnderElevation: 0,
        toolbarHeight: 60,
        titleSpacing: 30,
        title: const Text(
          'Notas',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/9060523?s=200&v=4',
              ),
            ),
          ),
        ],
      ),

      /// Task List Screen
      body: const TasksCardScreen(),

      /// Drawer Menu
      drawer: const DrawerMenu(),

      /// This is the code that will be added to the end of the file

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 165, 22, 96),
        elevation: 0,
        onPressed: () {
          Navigator.pushNamed(context, '/add-user');
        },
        child: const Icon(Icons.add, size: 24, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
