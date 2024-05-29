import 'package:flutter/material.dart';
import 'package:idear/app/view/widgets/radio_button/widget_radio_button_mbti.dart';
import 'package:idear/core/theme/app_colors.dart';

class RadioMbtiGroup extends StatelessWidget {
  const RadioMbtiGroup(
      {super.key,
      required this.enumValues,
      required this.selectValue,
      required this.onChanged,
      required this.index});

  final List<String> enumValues;
  final String? selectValue;
  final ValueChanged onChanged;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 82,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColors.colorGray200),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: Column(
        children: [
          RadioMbtiButton(
            value: enumValues[0],
            groupValue: selectValue,
            onChanged: () {
              onChanged(enumValues[0]);
            },
            noneSelect: selectValue == null,
          ),
          RadioMbtiButton(
              value: enumValues[1],
              groupValue: selectValue,
              onChanged: () {
                onChanged(enumValues[1]);
              }),
        ],
      ),
    );
  }
}
