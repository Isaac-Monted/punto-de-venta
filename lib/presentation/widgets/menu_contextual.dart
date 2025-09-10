
import 'package:flutter/material.dart';

class MenuContextual extends StatelessWidget {
  final List<MenuItem> items;

  const MenuContextual({
    super.key,
    required this.items
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Wrap(
        spacing: 8.0,
        runSpacing: 5.0,
        alignment: WrapAlignment.start,
        runAlignment: WrapAlignment.start,
        children: items.map((item) {
          return ElevatedButton.icon(
            icon: Icon(item.icon),
            label: Text(item.label),
            onPressed: item.onPressed,
          );
        }).toList(),
      ),
    );
  }
}

// Modelo para generar los items para construir el menu contextual
class MenuItem {
  final IconData icon;
  final String label;
  final VoidCallback? onPressed;

  const MenuItem ({
    required this.icon,
    required this.label,
    this.onPressed
  });
}