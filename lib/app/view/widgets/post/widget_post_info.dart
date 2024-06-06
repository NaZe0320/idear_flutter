import 'package:flutter/material.dart';
import 'package:idear/app/model/model_post_bundle.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';

class PostInfo extends StatelessWidget {
  const PostInfo({
    super.key,
    required this.postBundle,
  });

  final PostBundle postBundle;

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
            Text('${postBundle.relation?.text}',
                style: AppTextStyles.writeTitle),
            Text(']',
                style: AppTextStyles.writeTitle
                    .copyWith(color: AppColors.colorMain)),
            Text(
                '에게 전하는 ${postBundle.privateKeyword?.text ?? postBundle.publicKeyword?.text}',
                style: AppTextStyles.writeTitle),
          ],
        )
      ],
    );
  }
}
