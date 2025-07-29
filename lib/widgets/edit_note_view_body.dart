import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        children: [
          SizedBox(height: 45),
          CustomAppBar(title: 'Edit Note', icon: Icons.check),
          SizedBox(height: 20),
          CustomTextField(hint: 'Title', maxLines: 1),
          SizedBox(height: 16),
          CustomTextField(hint: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
