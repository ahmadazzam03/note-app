import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return EditNoteView();
              },
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.only(top: 24, bottom: 24, left: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(note.color),
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    note.subTitle,
                    style: TextStyle(color: Colors.black.withAlpha(100)),
                  ),
                ),

                //Icon(Icons.delete, size: 25, color: Colors.black),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    //After delete process we will the fetch all note to refresh data
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: Icon(Icons.delete, size: 25, color: Colors.black),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  note.date,
                  style: TextStyle(color: Colors.black.withAlpha(100)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
