import 'package:flutter/material.dart';
import 'package:flutter_todo/features/task/task_new/~graphql/__generated__/add_todo.mutation.graphql.dart';
import 'package:flutter_todo/graphql/__generated__/schema.graphql.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    final formKey = GlobalKey<FormState>();

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
        builder: (runMutation, result, {refetch}) {
          if (result == null || result.isLoading) {
            return const CircularProgressIndicator();
          }

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a title';
                        }
                        return null;
                      },
                      autocorrect: false,
                      onChanged: (value) => titleController.text = value,
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
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      autocorrect: false,
                      onChanged: (value) => descriptionController.text = value,
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

                    /// Save button

                    FloatingActionButton.extended(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          runMutation(
                            Variables$Mutation$TodoCreate(
                              todo: Input$TodoInput(
                                title: titleController.text,
                                description: descriptionController.text,
                              ),
                            ),
                          );

                          if (result.parsedData != null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('CreateToDO failed'),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('CreateToDO success'),
                              ),
                            );

                            Navigator.of(context).pop();
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Por Favor completar los campos'),
                            ),
                          );
                        }
                      },
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      elevation: 0,
                      backgroundColor: const Color(0xffDF2E59),
                      label: const Text(
                        'Guardar',
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
              ),
            ),
          );
        },
      ),
    );
  }
}
