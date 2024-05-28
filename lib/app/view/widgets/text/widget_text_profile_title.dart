import 'package:flutter/material.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';

class TextProfileTitle extends StatelessWidget {
  const TextProfileTitle(
      {super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.body01,
        ),
        const SizedBox(height: 4),
        Text(
          description,
          style: AppTextStyles.caption04.copyWith(
            color: AppColors.colorGray700,
          ),
        ),
      ],
    );
  }
}
