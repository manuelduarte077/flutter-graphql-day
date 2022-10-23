import 'package:flutter/material.dart';

import 'package:flutter_todo/features/task/task_list/~graphql/__generated__/todo_tab.query.graphql.dart';
import 'package:flutter_todo/utils/utils.dart';

class TasksCardScreen extends StatefulWidget {
  const TasksCardScreen({super.key});

  @override
  State<TasksCardScreen> createState() => _TasksCardScreenState();
}

class _TasksCardScreenState extends State<TasksCardScreen> {
  @override
  Widget build(BuildContext context) {
    /// Listar estos
    return Query$TodosQuery$Widget(
      builder: (result, {fetchMore, refetch}) {
        final noDataWidget = validateResult(result);

        if (noDataWidget != null) return noDataWidget;

        final data = result.parsedData!;

        data.todos.removeWhere((l) => l == null);

        if (data.todos.isEmpty) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Column(
              children: [
                Image.asset(
                  'assets/no_data.png',
                  width: double.infinity,
                  height: 300,
                ),
                const Text(
                  'No hay tareas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Puedes crear una nueva tarea presionando el botón +',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const Spacer(),
              ],
            ),
          );
        }

        return RefreshIndicator(
          child: ListView.builder(
            itemCount: data.todos.length,
            itemBuilder: (context, index) {
              final todo = data.todos[index];

              return NotesWidget(
                task: todo,
                title: todo.title,
                description: todo.description,
              );
            },
          ),
          onRefresh: () async {
            await refetch!();
          },
        );
      },
    );
  }
}

class NotesWidget extends StatelessWidget {
  NotesWidget({
    super.key,
    required this.task,
    required this.title,
    required this.description,
  });

  final Query$TodosQuery$todos task;

  final String title;
  final String description;
  void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    /// Listar las tareas en un card
    return Column(
      children: [
        Card(
          color: const Color(0xff393346),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w400,
                decoration: task.completed
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
            subtitle: Text(
              description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Color(0xff9b474a),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/task-detail', arguments: task);
            },
            leading: task.completed
                ? const Icon(
                    Icons.check_box,
                    size: 30,
                    color: Color(0xffac6dde),
                  )
                : const Icon(
                    Icons.check_box_outline_blank,
                    size: 30,
                    color: Color(0xffac6dde),
                  ),
          ),
        ),
      ],
    );
  }
}
