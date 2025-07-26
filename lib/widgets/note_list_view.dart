import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      padding: EdgeInsets.only(top: 10),
      itemBuilder: (context, index) {
        return CustomNoteItem();
      },
    );
  }
}
