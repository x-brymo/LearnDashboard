import 'package:flutter/material.dart';

class CommentView extends StatelessWidget {
  const CommentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Comments',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your action here
              },
              child: const Text('Add Comment'),
            ),
          ],
        ),
      ),
    );
  }
}