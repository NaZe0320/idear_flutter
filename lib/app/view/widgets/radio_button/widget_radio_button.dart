import 'package:flutter/material.dart';

class RadioButton extends StatelessWidget {
  const RadioButton(
      {super.key,
      required this.text,
      required this.isSelected,
      required this.onTap});

  final String text;
  final bool? isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return const InkWell();
  }
}
