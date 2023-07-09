import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());
  List<NoteModel>? notesModel;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>('Notes Box');

    notesModel = notesBox.values.toList();
  }
}
