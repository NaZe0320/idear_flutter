import 'package:flutter/material.dart';
import 'package:idear/app/view/widgets/button/widget_profile_add_button.dart';
import 'package:idear/app/view/widgets/button/widget_profile_button.dart';
import 'package:idear/app/view/widgets/widget_tool_bar.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';

class ScreenProfileList extends StatelessWidget {
  const ScreenProfileList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
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
              const SizedBox(height: 12),
              const Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ButtonProfile(),
                      SizedBox(height: 8),
                      ButtonProfile(),
                      SizedBox(height: 8),
                      ButtonProfile(),
                      SizedBox(height: 8),
                      ButtonProfileAdd()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}