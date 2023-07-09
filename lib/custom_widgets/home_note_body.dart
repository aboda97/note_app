import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/custom_widgets/app_bar_note.dart';
import 'package:note_app/custom_widgets/list_view_builder.dart';

import '../cubit/notes_cubit/notes_cubit.dart';

class CustomNoteBody extends StatefulWidget {
  const CustomNoteBody({super.key});

  @override
  State<CustomNoteBody> createState() => _CustomNoteBodyState();
}

class _CustomNoteBodyState extends State<CustomNoteBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 8.0,
        ),
        child: Column(
          children: [
            CustomAppBarNote(
              icon: Icons.search,
              onPressed: () {},
              titleTxt: 'Note',
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Expanded(
              child: CustomListViewBuilder(),
            ),
          ],
        ),
      ),
    );
  }
}
