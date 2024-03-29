part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteStates {}

class AddNoteInitialState extends AddNoteStates {}

class AddNoteLoadingState extends AddNoteStates {}

class AddNoteSuccessState extends AddNoteStates {}

class AddNoteFailureState extends AddNoteStates {
  final String error;

  AddNoteFailureState(this.error);
}
