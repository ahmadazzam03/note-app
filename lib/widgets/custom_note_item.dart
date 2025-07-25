import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffFFCC80),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Build your career with ahmad azzam',
                  style: TextStyle(color: Colors.black.withAlpha(100)),
                ),
              ),

              trailing: Icon(Icons.delete, size: 25, color: Colors.black),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                'Jul 22,2025',
                style: TextStyle(color: Colors.black.withAlpha(100)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
