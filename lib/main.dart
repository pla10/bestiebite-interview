import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/reviews_bloc.dart';
import 'pages/reviews_page.dart';

void main() => runApp(const InterviewApp());

class InterviewApp extends StatelessWidget {
  const InterviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interview — Exercise 1',
      home: BlocProvider(
        create: (_) => ReviewsBloc(),
        child: const ReviewsPage(),
      ),
    );
  }
}
