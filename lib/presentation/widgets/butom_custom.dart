import 'package:flutter/material.dart';

class ButomCustom extends StatelessWidget {
  final ColorScheme backgroun;
  final String text;
  final IconData? icon;
  final VoidCallback? onPressed;

  const ButomCustom({
    super.key,
    required this.backgroun,
    required this.text,
    this.icon,
    this.onPressed
    });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      iconAlignment: IconAlignment.end,
      icon: icon != null
        ? Icon(icon, color: backgroun.inversePrimary)
        : null,
      label: Text(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroun.primary,
        foregroundColor: backgroun.surface
      ),
      onPressed: onPressed,
    );
  }
}