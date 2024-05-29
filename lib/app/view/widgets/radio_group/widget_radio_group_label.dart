import 'package:flutter/material.dart';
import 'package:idear/app/view/widgets/radio_button/widget_radio_button_label.dart';

class RadioLabelGroup<T extends Enum> extends StatelessWidget {
  const RadioLabelGroup(
      {super.key,
      required this.enumValues,
      this.padding = 10,
      required this.selectValue,
      required this.onChanged});

  final List<T> enumValues;
  final double padding;
  final T? selectValue;
  final ValueChanged<T> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 8.0,
        runSpacing: 8.0,
        children: [
          for (var value in enumValues)
            RadioLabelButton(
                value: value,
                groupValue: selectValue,
                onChanged: () {
                  onChanged(value);
                },
                padding: padding)
        ],
      ),
    );
  }
}
