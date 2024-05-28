import 'package:flutter/material.dart';
import 'package:idear/app/view/widgets/widget_tool_bar.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';

import '../../widgets/widget_profile_list.dart';

class ScreenProfileList extends StatelessWidget {
  const ScreenProfileList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            children: [
              Toolbar(
                title: '마이페이지',
                icon: "trash",
                onTap: () {},
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Text(
                    '프로필',
                    style: AppTextStyles.subheading02,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '3',
                    style: AppTextStyles.subheading02
                        .copyWith(color: AppColors.colorMain),
                  ),
                  const Text(
                    '/10',
                    style: AppTextStyles.subheading02,
                  ),
                ],
              ),
              const SizedBox(height: 4),
              const ListProfile(),
            ],
          ),
        ),
      ),
    );
  }
}
