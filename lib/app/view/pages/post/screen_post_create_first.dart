import 'package:flutter/material.dart';
import 'package:idear/app/enums/relation.dart';
import 'package:idear/app/enums/situation.dart';
import 'package:idear/app/view/widgets/radio_group/widget_radio_group_label.dart';
import 'package:idear/app/view/widgets/radio_group/widget_radio_group_situation.dart';
import 'package:idear/app/viewmodel/viewmodel_post_create.dart';
import 'package:idear/core/theme/app_text_styles.dart';
import 'package:provider/provider.dart';

class ScreenPostCreateFirst extends StatelessWidget {
  const ScreenPostCreateFirst({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ViewModelPostCreate>(context, listen: true);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            const Text(
              '전달할 상황과\n수신인의 관계를 설정해주세요.',
              style: AppTextStyles.heading02,
            ),
            const SizedBox(height: 60),
            const Text(
              '상황',
              style: AppTextStyles.subheading02,
            ),
            const SizedBox(height: 12),
            RadioSituationGroup(
                selectValue: viewModel.postBundle.situation,
                onChanged: (value) {
                  viewModel.setPostBundle<Situation>(value);
                }),
            const SizedBox(height: 36),
            const Text(
              '관계',
              style: AppTextStyles.subheading02,
            ),
            const SizedBox(height: 12),
            RadioLabelGroup<Relation>(
                enumValues: Relation.values,
                padding: 20,
                selectValue: viewModel.postBundle.relation,
                onChanged: (value) {
                  viewModel.setPostBundle<Relation>(value);
                })
          ],
        ),
      ),
    );
  }
}
