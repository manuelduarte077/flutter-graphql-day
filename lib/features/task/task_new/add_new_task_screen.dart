import 'package:flutter/material.dart';
import 'package:flutter_todo/features/task/task_new/~graphql/__generated__/add_todo.mutation.graphql.dart';
import 'package:flutter_todo/graphql/__generated__/schema.graphql.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add notes',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Mutation$TodoCreate$Widget(
        builder: (runMutation, result) {
          if (result == null || result.isLoading) {
            return const CircularProgressIndicator();
          }

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 16),
                TextField(
                  controller: titleController,
                  style: const TextStyle(fontSize: 24),

                  /// Si esta vacio, no se puede guardar

                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Title',
                    hintStyle: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff98A8B7),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: descriptionController,
                  style: const TextStyle(fontSize: 18),
                  keyboardType: TextInputType.multiline,
                  maxLines: 10,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Your notes here...',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff98A8B7),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                FloatingActionButton.extended(
                  onPressed: () async {
                    await runMutation(
                      Variables$Mutation$TodoCreate(
                        todo: Input$TodoInput(
                          title: titleController.text,
                          description: descriptionController.text,
                        ),
                      ),
                    ).networkResult;

                    /// Si se guardo, se cierra la pantalla
                    /// Si no, se muestra un error

                    if (result.parsedData != null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('CreateToDO success'),
                        ),
                      );
                      Navigator.of(context).pop();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('CreateToDO failed'),
                        ),
                      );
                    }
                  },
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  elevation: 0,
                  backgroundColor: const Color(0xff7885FF),
                  label: const Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  icon: const Icon(Icons.check, color: Colors.white),
                ),
              ],
            ),
          );
        },
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
        //     child: Column(
        //       children: [
        //         TextField(
        //           controller: titleController,
        //           style: const TextStyle(fontSize: 24),
        //           decoration: const InputDecoration(
        //             border: InputBorder.none,
        //             hintText: 'Title',
        //             hintStyle: TextStyle(
        //               fontSize: 34,
        //               fontWeight: FontWeight.w700,
        //               color: Color(0xff98A8B7),
        //             ),
        //           ),
        //         ),
        //         const SizedBox(height: 10),
        //         TextField(
        //           controller: descriptionController,
        //           style: const TextStyle(fontSize: 18),
        //           keyboardType: TextInputType.multiline,
        //           maxLines: 20,
        //           decoration: const InputDecoration(
        //             border: InputBorder.none,
        //             hintText: 'Your notes here...',
        //             hintStyle: TextStyle(
        //               fontSize: 16,
        //               fontWeight: FontWeight.w400,
        //               color: Color(0xff98A8B7),
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: () {},
        //   shape: const RoundedRectangleBorder(
        //     borderRadius: BorderRadius.all(Radius.circular(50)),
        //   ),
        //   elevation: 0,
        //   backgroundColor: const Color(0xff7885FF),
        //   label: const Text(
        //     'Save',
        //     style: TextStyle(
        //       color: Colors.white,
        //       fontSize: 20,
        //       fontWeight: FontWeight.w700,
        //     ),
        //   ),
        //   icon: const Icon(Icons.check, color: Colors.white),
        // ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
