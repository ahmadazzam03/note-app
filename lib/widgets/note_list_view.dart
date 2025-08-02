import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/widgets/custom_note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    //Add blocProvider here to display the notes
    // List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;

    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        if (state is NoteSuccess) {
          final notes = state.notes;

          return ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.only(top: 10),
            itemBuilder: (context, index) {
              return CustomNoteItem(note: notes[index]);
            },
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
