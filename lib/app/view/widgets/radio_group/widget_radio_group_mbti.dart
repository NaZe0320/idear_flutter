import 'package:flutter/material.dart';
import 'package:idear/app/view/widgets/radio_button/widget_radio_button_mbti.dart';
import 'package:idear/core/theme/app_colors.dart';

class RadioMbtiGroup extends StatefulWidget {
  const RadioMbtiGroup({super.key, required this.enumValues});

  final List<String> enumValues;

  @override
  State<RadioMbtiGroup> createState() => _RadioMbtiGroupState();
}

class _RadioMbtiGroupState extends State<RadioMbtiGroup> {
  String? selectValue;

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
            value: widget.enumValues[0],
            groupValue: selectValue,
            onChanged: () {
              setState(() {
                selectValue = widget.enumValues[0];
              });
            },
            noneSelect: selectValue == null,
          ),
          RadioMbtiButton(
              value: widget.enumValues[1],
              groupValue: selectValue,
              onChanged: () {
                setState(() {
                  selectValue = widget.enumValues[1];
                });
              }),
        ],
      ),
    );
  }
}
