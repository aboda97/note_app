import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';

import 'item_container_note.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
   
    return BlocBuilder<NotesCubit, NotesCubitState>(
      builder: (context, state) {
         List<NoteModel> notesModel =
        BlocProvider.of<NotesCubit>(context).notesModel!;
        return ListView.builder(
            itemCount: notesModel.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: CustomItemContanierNote(
                  noteModel: notesModel[index],
                ),
              );
            }));
      },
    );
  }
}
