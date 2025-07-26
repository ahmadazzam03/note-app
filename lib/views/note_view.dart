import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_show_modal_bottom_sheet.dart';
import 'package:note_app/widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoteViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        shape: CircleBorder(),
        foregroundColor: Colors.black,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddNoteButtonSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
