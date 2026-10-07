import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/classes/note_model.dart';
import 'package:notes_app/cubits/create_note_cubit/create_note_cubit.dart';
import 'package:notes_app/cubits/create_note_cubit/create_note_states.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNoteCubit, CreateNoteStates>(
      builder: (context, state) {
        List<NoteModel> notesList =
            BlocProvider.of<CreateNoteCubit>(
              context,
            ).notes!;
        return ListView.builder(
          itemCount: notesList.length,
          padding: EdgeInsets.zero,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
              ),
              child: CustomNoteItem(note: notesList[index]),
            );
          },
        );
      },
    );
  }
}
