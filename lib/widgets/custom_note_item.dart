import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/widgets/custom_text.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              text: 'Flutter tips',
              color: Colors.black,
              size: 28,
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(
                top: 16,
                bottom: 16,
              ),
              child: CustomText(
                text:
                    'Build your career with Mohamed Ashry',
                color: Color(0xff946426),
                size: 18,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
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
              text: 'May 21,2026',
              color: Color(0xff946426),
            ),
          ),
        ],
      ),
    );
  }
}
