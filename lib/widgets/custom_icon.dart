import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
    this.onPressed,
  });

  final VoidCallback? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(15),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(icon, size: 28),
        ),
      ),
    );
  }
}
