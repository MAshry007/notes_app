import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constants.dart';
import 'package:notes_app/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      height: 55,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: CustomText(
          text: 'Add',
          color: Colors.black,
          size: 20,
          weight: FontWeight.bold,
        ),
      ),
    );
  }
}
