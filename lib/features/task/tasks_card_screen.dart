import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TasksCardScreen extends StatelessWidget {
  const TasksCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const WidgetNotes(
              title: '✍️ Youtube script ideas',
              description:
                  'There are many apps in Android that can run or emulate other operating systems, via utilizing hardware support for platform... ',
            ),

            /// Separator
            SizedBox(
              height: 0.5,
              child: Container(
                color: const Color(0xFFBDBDBD),
              ),
            ),

            const WidgetNotes(
              title: '📚 Read a book',
              description:
                  'There are many apps in Android that can run or emulate other operating systems, via utilizing hardware support for platform... ',
            ),

            /// Separator
            SizedBox(
              height: 0.5,
              child: Container(
                color: const Color(0xFFBDBDBD),
              ),
            ),

            const WidgetNotes(
              title: '📝 Write a blog post',
              description:
                  'There are many apps in Android that can run or emulate other operating systems, via utilizing hardware support for platform... ',
            ),

            /// Separator
            SizedBox(
              height: 0.5,
              child: Container(
                color: const Color(0xFFBDBDBD),
              ),
            ),

            const WidgetNotes(
              title: '📘 Datastore Blog',
              description:
                  'There are many apps in Android that can run or emulate other operating systems, via utilizing hardware support for platform... ',
            ),

            /// Separator
            SizedBox(
              height: 0.5,
              child: Container(
                color: const Color(0xFFBDBDBD),
              ),
            ),

            const WidgetNotes(
              title: '🎭 College Skit review',
              description:
                  'There are many apps in Android that can run or emulate other operating systems, via utilizing hardware support for platform... ',
            ),

            /// Separator
            SizedBox(
              height: 0.5,
              child: Container(
                color: const Color(0xFFBDBDBD),
              ),
            ),

            const WidgetNotes(
              title: '📌 Points to remember',
              description:
                  'There are many apps in Android that can run or emulate other operating systems, via utilizing hardware support for platform... ',
            ),

            /// Separator
            SizedBox(
              height: 0.5,
              child: Container(
                color: const Color(0xFFBDBDBD),
              ),
            ),

            const WidgetNotes(
              title: 'College skit review 🏄😝',
              description:
                  'There are many apps in Android that can run or emulate other operating systems, via utilizing hardware support for platform... ',
            ),

            SizedBox(
              height: 0.5,
              child: Container(
                color: const Color(0xFFBDBDBD),
              ),
            ),
          ],
        ),
      ),
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
    final handleDetailTask = useCallback(() {
      Navigator.pushNamed(context, '/task-detail');
    }, []);

    return ListTile(
      onTap: handleDetailTask,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      subtitle: Text(
        description,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
