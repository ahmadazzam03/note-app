part of 'notes_cubit.dart';

sealed class NotesState {}

class NotesInitial extends NotesState {}

class NoteSuccess extends NotesState {
  final List<NoteModel> notes;

  NoteSuccess(this.notes);
}
