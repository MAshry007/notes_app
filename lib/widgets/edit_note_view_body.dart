import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/classes/note_model.dart';
import 'package:notes_app/cubits/create_note_cubit/create_note_cubit.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/notes_view_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() =>
      _EditNoteViewBodyState();
}

class _EditNoteViewBodyState
    extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 60),
          NotesViewAppBar(
            text: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title =
                  title ?? widget.note.title;

              widget.note.subTitle =
                  content ?? widget.note.subTitle;

              widget.note.save();

              BlocProvider.of<CreateNoteCubit>(
                context,
              ).fetchAllNotes();

              Navigator.pop(context);
            },
            secondIcon: Icons.close,
          ),
          SizedBox(height: 40),
          CustomTextField(
            onChanged: (data) {
              title = data;
            },
            hint: widget.note.title,
          ),
          SizedBox(height: 16),
          CustomTextField(
            onChanged: (data) {
              content = data;
            },
            hint: widget.note.subTitle,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
