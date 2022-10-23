import 'package:flutter/material.dart';

import 'package:flutter_todo/features/task/task_detail/~graphql/__generated__/updated_todo.mutation.graphql.dart';
import 'package:flutter_todo/features/task/task_list/~graphql/__generated__/todo.fragments.graphql.dart';

class TaskDetailScreen extends StatefulWidget {
  const TaskDetailScreen({super.key, required this.task});

  final Fragment$todoCardBody_Todo task;

  @override
  State<TaskDetailScreen> createState() => _TaskDetailScreenState();
}

class _TaskDetailScreenState extends State<TaskDetailScreen> {
  @override
  Widget build(BuildContext context) {
    /// Variable que contiene el estado de la tarea
    final isCompleted = widget.task.completed
        ? const Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 30,
          )
        : const Icon(
            Icons.check_circle_outline,
            color: Colors.white,
            size: 30,
          );

    return Scaffold(
      backgroundColor: const Color(0xff181920),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color(0xff181920),
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
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              widget.task.description,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                height: 1.8,
                color: Colors.white,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }

  Mutation$TodoUpdateCompleted$Widget changeStatusTask(Icon isCompleted) {
    return Mutation$TodoUpdateCompleted$Widget(
      builder: (runMutation, result, {refetch}) {
        if (result == null || result.isLoading) {
          return const CircularProgressIndicator();
        }

        return IconButton(
          onPressed: () {
            runMutation(
              Variables$Mutation$TodoUpdateCompleted(
                todoId: widget.task.id,
                completed: !widget.task.completed,
              ),
            );
            print('Tarea completada');
          },
          icon: isCompleted,
        );
      },
    );
  }
}
