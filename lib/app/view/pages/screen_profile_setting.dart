import 'package:flutter/material.dart';
import 'package:idear/app/enums/personality.dart';
import 'package:idear/app/enums/private_keyword.dart';
import 'package:idear/app/enums/public_keyword.dart';
import 'package:idear/app/enums/relation.dart';
import 'package:idear/app/view/widgets/radio_group/widget_radio_label_group.dart';
import 'package:idear/app/view/widgets/radio_group/widget_radio_polite_group.dart';
import 'package:idear/app/view/widgets/widget_button.dart';
import 'package:idear/app/view/widgets/radio_button/widget_radio_label_button.dart';
import 'package:idear/app/view/widgets/radio_button/widget_radio_polite_button.dart';

class ScreenProfileSetting extends StatelessWidget {
  const ScreenProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 30,
        ),
        RadioLabelGroup<Personality>(
          enumValues: Personality.values,
        ),
        SizedBox(
          height: 30,
        ),
        RadioLabelGroup<PrivateKeyword>(
          enumValues: PrivateKeyword.values,
        ),
        SizedBox(
          height: 30,
        ),
        RadioLabelGroup<PublicKeyword>(
          enumValues: PublicKeyword.values,
        ),
        SizedBox(
          height: 30,
        ),
        RadioLabelGroup<Relation>(
          enumValues: Relation.values,
          padding: 18,
        ),
      ],
    );
  }
}
