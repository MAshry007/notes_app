import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/classes/note_model.dart';
import 'package:notes_app/cubits/create_note_cubit/create_note_cubit.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/widgets/custom_text.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
        padding: EdgeInsets.only(
          top: 20,
          bottom: 20,
          left: 16,
        ),
        decoration: BoxDecoration(
          color: Color(0xffFFCD7A),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: CustomText(
                text: note.title,
                color: Colors.black,
                size: 28,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 16,
                ),
                child: CustomText(
                  text: note.subTitle,
                  color: Color(0xff946426),
                  size: 18,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<CreateNoteCubit>(
                    context,
                  ).fetchAllNotes();
                },
                icon: FaIcon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: CustomText(
                text: note.date,
                color: Color(0xff946426),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
