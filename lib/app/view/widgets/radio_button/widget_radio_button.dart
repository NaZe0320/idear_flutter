import 'package:flutter/material.dart';

class RadioButton<T> extends StatelessWidget {
  const RadioButton(
      {super.key,
      required this.value,
      required this.groupValue,
      required this.onChanged});

  final T value;
  final T? groupValue;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
