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

        /// si no hay datos en la lista de tareas se muestra un mensaje de que no hay tareas

        if (data.todos.isEmpty) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/no_data.png',
                width: 237,
                height: 186,
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

        return ListView.builder(
          itemCount: data.todos.length,
          itemBuilder: (context, index) {
            final todo = data.todos[index];
            return WidgetNotes(
              title: todo.title,
              description: todo.description,
            );
          },
        );
      },
    );
  }
}

class WidgetNotes extends HookWidget {
  const WidgetNotes({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final handleDetailTask = useCallback(
      () {
        Navigator.pushNamed(context, '/task-detail');
      },
      [],
    );

    return ListTile(
      onTap: handleDetailTask,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Text(
          description,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
