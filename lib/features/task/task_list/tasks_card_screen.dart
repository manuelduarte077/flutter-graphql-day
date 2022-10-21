import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_todo/features/task/task_list/~graphql/__generated__/todo_tab.query.graphql.dart';
import 'package:flutter_todo/utils/utils.dart';

class TasksCardScreen extends StatelessWidget {
  const TasksCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Listar estos
    return Query$TodosQuery$Widget(
      builder: (result, {fetchMore, refetch}) {
        /// investigar
        final noDataWidget = validateResult(result);

        if (noDataWidget != null) return noDataWidget;

        final data = result.parsedData!;

        data.todos.removeWhere((l) => l == null);

        if (data.todos.isEmpty) {
          return Column(
            children: [
              Image.asset(
                'assets/no_data.png',
              ),
              const SizedBox(height: 20),
              const ListTile(
                title: Text(
                  'No hay tareas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  'Puedes crear una nueva tarea presionando el botón +',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
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

class NotesWidget extends HookWidget {
  const NotesWidget({
    super.key,
    required this.title,
    required this.task,
    required this.description,
  });

  final Query$TodosQuery$todos task;

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final handleDetailTask = useCallback(
      () {
        Navigator.pushNamed(context, '/task-detail', arguments: task);
      },
      [],
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: task.completed
            ? const Icon(Icons.check_box, size: 30)
            : const Icon(Icons.check_box_outline_blank, size: 30),
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        // onTap: handleDetailTask,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            decoration: task.completed
                ? TextDecoration.lineThrough
                : TextDecoration.none,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        subtitle: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            description,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
