import 'package:flutter/material.dart';
import 'package:note_app/custom_widgets/app_bar_note.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 8.0,
          ),
          child: Column(
            children: [
              CustomAppBarNote(
                icon: Icons.check,
                onPressed: () {},
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                cursorColor: const Color(0XFFFFCC80),
                decoration: InputDecoration(
                  hintText: 'Title',
                  hintStyle: const TextStyle(color: Color(0XFFFFCC80)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: Color(0XFFFFCC80),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                maxLines: 10,
                cursorColor: const Color(0XFFFFCC80),
                decoration: InputDecoration(
                  hintText: 'Description',
                  hintStyle: const TextStyle(color: Color(0XFFFFCC80)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: Color(0XFFFFCC80),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
