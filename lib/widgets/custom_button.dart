import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constants.dart';
import 'package:notes_app/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}
