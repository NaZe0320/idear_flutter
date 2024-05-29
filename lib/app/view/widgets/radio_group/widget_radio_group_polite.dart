import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:idear/app/enums/polite.dart';
import 'package:idear/app/view/widgets/radio_button/widget_radio_button_polite.dart';

class RadioPoliteGroup extends StatelessWidget {
  const RadioPoliteGroup(
      {super.key, required this.selectValue, required this.onChanged});

  final Polite? selectValue;
  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RadioPoliteButton(
            value: Polite.public,
            groupValue: selectValue,
            onChanged: () {
              onChanged(Polite.public);
            },
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: RadioPoliteButton(
            value: Polite.private,
            groupValue: selectValue,
            onChanged: () {
              onChanged(Polite.private);
            },
          ),
        ),
      ],
    );
  }
}
