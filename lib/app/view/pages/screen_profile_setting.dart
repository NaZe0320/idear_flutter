import 'package:flutter/material.dart';
import 'package:idear/app/enums/personality.dart';
import 'package:idear/app/enums/private_keyword.dart';
import 'package:idear/app/enums/public_keyword.dart';
import 'package:idear/app/enums/relation.dart';
import 'package:idear/app/view/widgets/radio_group/widget_radio_label_group.dart';
import 'package:idear/app/view/widgets/radio_group/widget_radio_mbti_group.dart';
import 'package:idear/app/view/widgets/widget_spacing.dart';

class ScreenProfileSetting extends StatelessWidget {
  const ScreenProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        const RadioLabelGroup<Personality>(
          enumValues: Personality.values,
        ),
        const SizedBox(
          height: 30,
        ),
        const RadioLabelGroup<PrivateKeyword>(
          enumValues: PrivateKeyword.values,
        ),
        const SizedBox(
          height: 30,
        ),
        const RadioLabelGroup<PublicKeyword>(
          enumValues: PublicKeyword.values,
        ),
        const SizedBox(
          height: 30,
        ),
        const RadioLabelGroup<Relation>(
          enumValues: Relation.values,
          padding: 18,
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            const RadioMbtiGroup(
              enumValues: ['E', 'I'],
            ),
            spaceingHorizontal(8),
            const RadioMbtiGroup(
              enumValues: ['N', 'S'],
            ),
            spaceingHorizontal(8),
            const RadioMbtiGroup(
              enumValues: ['F', 'T'],
            ),
            spaceingHorizontal(8),
            const RadioMbtiGroup(
              enumValues: ['P', 'J'],
            ),
          ],
        )
      ],
    );
  }
}
