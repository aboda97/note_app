import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/screens/home_notes_screen.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('Notes Box');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes Applicaton',
      theme: ThemeData(brightness: Brightness.dark),
      home: const HomeNotesScreen(),
    );
  }
}
