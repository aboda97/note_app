import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/custom_widgets/home_note_body.dart';
import 'package:note_app/custom_widgets/model_bottom_sheet.dart';

class HomeNotesScreen extends StatelessWidget {
  static String id = 'Home Notes Screen';
  const HomeNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CustomNoteBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        foregroundColor: const Color(0XFFFFCC80),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            context: context,
            builder: (context) {
              return const CustomContainerForModelBottomSheet();
            },
          );
        },
        child: const Icon(
          Icons.add,
          size: 32,
        ),
      ),
    );
  }
}
