import 'package:flutter/material.dart';

class TaskDetailScreen extends StatelessWidget {
  const TaskDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: IconButton(
              icon: const Icon(Icons.check_box_outline_blank, size: 30),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
        child: Column(
          children: const [
            Text(
              '✍️ Youtube script ideas',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 25),
            Text(
              ''' 
Google Play Protect, regular security updates and control over how your data is shared. We’re dedicated to securing Android’s 2.5 billion+ active devices every day and keeping information private. 
              
Screen readers, speech-to-text and some of the newest ways to experience the world your way. 
              
Choices for work, gaming, 5G streaming and anything else. There are over 24,000 phones and tablets that run on Android globally. So no matter what you’re looking for, there’s something for you.
''',
              style: TextStyle(
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
}
