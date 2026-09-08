import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';
import 'package:notes_app/widgets/custom_text.dart';

class NotesViewAppBar extends StatelessWidget {
  const NotesViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 170),
        CustomText(text: 'Notes', size: 32),
        Spacer(),
        CustomIcon(),
      ],
    );
  }
}
