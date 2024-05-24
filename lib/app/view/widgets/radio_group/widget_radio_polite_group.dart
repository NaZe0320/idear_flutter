import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:idear/app/enums/polite.dart';
import 'package:idear/app/view/widgets/radio_button/widget_radio_polite_button.dart';
import 'package:idear/app/view/widgets/widget_spacing.dart';

class RadioPoliteGroup extends StatefulWidget {
  const RadioPoliteGroup({super.key});

  @override
  State<RadioPoliteGroup> createState() => _RadioPoliteGroupState();
}

class _RadioPoliteGroupState extends State<RadioPoliteGroup> {
  Polite? selectValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: RadioPoliteButton(
          value: Polite.public,
          groupValue: selectValue,
          onChanged: () {
            setState(() {
              selectValue = Polite.public;
            });
          },
        )),
        spaceingHorizontal(12),
        Expanded(
          child: RadioPoliteButton(
            value: Polite.private,
            groupValue: selectValue,
            onChanged: () {
              setState(() {
                selectValue = Polite.private;
              });
            },
          ),
        ),
      ],
    );
  }
}
