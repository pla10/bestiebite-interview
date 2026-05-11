import 'package:flutter/material.dart';

void main() => runApp(const PlaceholderApp());

class PlaceholderApp extends StatelessWidget {
  const PlaceholderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BestieBite Interview',
      home: Scaffold(
        appBar: AppBar(title: const Text('BestieBite — Interview')),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Text(
              'Sei sul branch main. Quando l\'intervistatore te lo dice, esegui:\n\n'
              'git checkout exercise-4\n\n'
              'oppure il branch dell\'esercizio successivo.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ),
        ),
      ),
    );
  }
}
