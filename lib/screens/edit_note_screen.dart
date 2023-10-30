import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/custom_widgets/app_bar_note.dart';
import 'package:note_app/models/note_model.dart';

class EditNoteScreen extends StatefulWidget {
  const EditNoteScreen({
    super.key,
    required this.noteModel,
  });

  final NoteModel noteModel;

  @override
  State<EditNoteScreen> createState() => _EditNoteScreenState();
}

class _EditNoteScreenState extends State<EditNoteScreen> {
  String? title;
  String? description;

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
                onPressed: () {
                  widget.noteModel.title = title ?? widget.noteModel.title;
                  widget.noteModel.subTitle = description ?? widget.noteModel.subTitle;
                  widget.noteModel.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  Navigator.pop(context);
                },
                titleTxt: 'Edit Note',
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                onChanged: (value) {
                  title = value;
                },
                cursorColor: const Color(0XFFFFCC80),
                decoration: InputDecoration(
                  hintText: widget.noteModel.title,
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
                onChanged: (value) {
                  description = value;
                },
                maxLines: 10,
                cursorColor: const Color(0XFFFFCC80),
                decoration: InputDecoration(
                  hintText: widget.noteModel.subTitle,
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
