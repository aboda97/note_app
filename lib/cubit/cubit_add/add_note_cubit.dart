import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitialState());
  addNote(NoteModel noteModel) async {
    emit(
      AddNoteLoadingState(),
    );
    try {
      var notesBox = Hive.box<NoteModel>('Notes Box');
      emit(
        AddNoteSuccessState(),
      );
      notesBox.add(noteModel);
    } on Exception catch (e) {
      emit(
        AddNoteFailureState(
          e.toString(),
        ),
      );
    }
  }
}
