import 'package:flutter/material.dart';
import 'package:idear/app/enums/personality.dart';
import 'package:idear/app/enums/relation.dart';
import 'package:idear/app/view/widgets/radio_button/widget_radio_label_button.dart';

class RadioLabelGroup<T extends Enum> extends StatefulWidget {
  const RadioLabelGroup(
      {super.key, required this.enumValues, this.padding = 10});

  final List<T> enumValues;
  final double padding;

  @override
  State<RadioLabelGroup> createState() => _RadioLabelGroupState();
}

class _RadioLabelGroupState<T extends Enum> extends State<RadioLabelGroup<T>> {
  T? selectValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 8.0,
        runSpacing: 8.0,
        children: [
          for (var value in widget.enumValues)
            RadioLabelButton(
                value: value,
                groupValue: selectValue,
                onChanged: () {
                  setState(() {
                    selectValue = value;
                  });
                },
                padding: widget.padding)
        ],
      ),
    );
  }
}
