import 'package:flutter/material.dart';
import 'package:flutter_todo/features/task/task_list/~graphql/__generated__/todo.fragments.graphql.dart';

class TaskDetailScreen extends StatefulWidget {
  const TaskDetailScreen({super.key, required this.task});

  final Fragment$todoCardBody_Todo task;

  @override
  State<TaskDetailScreen> createState() => _TaskDetailScreenState();
}

class _TaskDetailScreenState extends State<TaskDetailScreen> {
  /// Variable que contiene el estado de la tarea
  ///

  /// Variable que contiene el estado de la tarea

  @override
  Widget build(BuildContext context) {
    /// Variable que contiene el estado de la tarea
    var isCompleted = widget.task.completed
        ? const Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 30,
          )
        : const Icon(
            Icons.check_circle_outline,
            color: Colors.grey,
            size: 30,
          );

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: changeStatusTask(isCompleted),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.task.title,
              style: const TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              widget.task.description,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                height: 1.8,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }

  IconButton changeStatusTask(Icon isCompleted) {
    return IconButton(
      icon: isCompleted,
      onPressed: () {},
    );
  }
}
