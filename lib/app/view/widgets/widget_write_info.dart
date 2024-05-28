import 'package:flutter/material.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';

class WriteInfo extends StatelessWidget {
  const WriteInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '2024.06.11',
          style: AppTextStyles.caption04,
        ),
        Row(
          children: [
            Text('[',
                style: AppTextStyles.writeTitle
                    .copyWith(color: AppColors.colorMain)),
            const Text('친구', style: AppTextStyles.writeTitle),
            Text(']',
                style: AppTextStyles.writeTitle
                    .copyWith(color: AppColors.colorMain)),
            const Text('에게 전하는 생일축하', style: AppTextStyles.writeTitle),
          ],
        )
      ],
    );
  }
}
