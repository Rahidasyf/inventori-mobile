import 'package:flutter/material.dart';
import 'package:inventory/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nona Sweet Creations',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 182, 68, 63)),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
