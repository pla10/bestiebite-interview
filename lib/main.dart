import 'package:flutter/material.dart';

import 'user_page.dart';

void main() => runApp(const InterviewApp());

class InterviewApp extends StatelessWidget {
  const InterviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Interview — Exercise 1',
      home: UserPage(userId: 'user-123'),
    );
  }
}
