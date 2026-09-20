import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_notes_list_view.dart';
import 'package:notes_app/widgets/notes_view_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 60),
          NotesViewAppBar(
            text: 'Notes',
            icon: Icons.search,
          ),
          SizedBox(height: 20),
          Expanded(child: CustomNotesListView()),
        ],
      ),
    );
  }
}
