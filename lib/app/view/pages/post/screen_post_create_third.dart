import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:idear/app/view/widgets/widget_list_profile.dart';
import 'package:idear/app/viewmodel/viewmodel_post_create.dart';
import 'package:idear/core/theme/app_text_styles.dart';
import 'package:provider/provider.dart';

class ScreenPostCreateThird extends StatelessWidget {
  const ScreenPostCreateThird({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ViewModelPostCreate>(context, listen: true);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            '프로필을 선택해 주세요.',
            style: AppTextStyles.heading02,
          ),
        ),
        const SizedBox(height: 16),
        ListProfile(
          postCreateViewModel: viewModel,
        ),
      ],
    );
  }
}
