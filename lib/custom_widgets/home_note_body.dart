import 'package:flutter/material.dart';
import 'package:note_app/custom_widgets/app_bar_note.dart';
import 'package:note_app/custom_widgets/item_container_note.dart';

class CustomNoteBody extends StatelessWidget {
  const CustomNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 8.0,
        ),
        child: Column(
          children: const [
            CustomAppBarNote(),
            SizedBox(
              height: 16.0,
            ),
            CustomItemContanierNote(),
          ],
        ),
      ),
    );
  }
}
