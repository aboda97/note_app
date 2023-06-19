import 'package:flutter/material.dart';
import 'package:note_app/custom_widgets/home_note_body.dart';

class HomeNotesScreen extends StatelessWidget {
  static String id = 'Home Notes Screen';
  const HomeNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomNoteBody(),
    );
  }
}
