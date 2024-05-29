import 'package:flutter/material.dart';
import 'package:idear/app/view/widgets/widget_tool_bar.dart';
import 'package:idear/app/viewmodel/viewmodel_proflie.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';
import 'package:provider/provider.dart';

import '../../widgets/widget_list_profile.dart';

class ScreenProfileList extends StatelessWidget {
  const ScreenProfileList({super.key});

  @override
  Widget build(BuildContext context) {
    final profileViewModel =
        Provider.of<ViewModelProfile>(context, listen: true);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Toolbar(
              title: '마이페이지',
              icon: "trash",
              onTap: () {
                profileViewModel.setEditable();
              },
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  const Text(
                    '프로필',
                    style: AppTextStyles.subheading02,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${profileViewModel.profileList?.length ?? 0}',
                    style: AppTextStyles.subheading02
                        .copyWith(color: AppColors.colorMain),
                  ),
                  const Text(
                    '/10',
                    style: AppTextStyles.subheading02,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            const ListProfile(),
          ],
        ),
      ),
    );
  }
}
