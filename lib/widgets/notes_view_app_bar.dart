import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';
import 'package:notes_app/widgets/custom_text.dart';

class NotesViewAppBar extends StatelessWidget {
  const NotesViewAppBar({
    super.key,
    required this.text,
    required this.icon,
    this.secondIcon,
    this.onPressed,
  });

  final String text;
  final IconData icon;
  final IconData? secondIcon;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(text: text, size: 32),
        Spacer(),
        if (secondIcon != null)
          CustomIcon(
            icon: secondIcon!,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        SizedBox(width: 5),
        CustomIcon(icon: icon, onPressed: onPressed),
      ],
    );
  }
}
