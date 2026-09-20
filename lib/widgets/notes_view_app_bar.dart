import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';
import 'package:notes_app/widgets/custom_text.dart';

class NotesViewAppBar extends StatelessWidget {
  const NotesViewAppBar({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(text: text, size: 32),
        Spacer(),
        CustomIcon(icon: icon),
      ],
    );
  }
}
