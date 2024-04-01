import 'package:flutter/material.dart';

class CustomFloatingButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CustomFloatingButtom({
    super.key, required this.icon, required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}