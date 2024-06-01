import 'package:flutter/material.dart';
import 'package:idear/app/enums/situation.dart';

import '../radio_button/widget_radio_button_situation.dart';

class RadioSituationGroup extends StatelessWidget {
  const RadioSituationGroup(
      {super.key, required this.selectValue, required this.onChanged});

  final Situation? selectValue;
  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RadioSituationButton(
            value: Situation.public,
            groupValue: selectValue,
            onChanged: () {
              onChanged(Situation.public);
            },
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: RadioSituationButton(
            value: Situation.private,
            groupValue: selectValue,
            onChanged: () {
              onChanged(Situation.private);
            },
          ),
        ),
      ],
    );
  }
}
