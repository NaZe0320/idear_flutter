import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:idear/app/model/model_post.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';

class ExpandablePostViewSelect extends StatelessWidget {
  const ExpandablePostViewSelect({super.key, required this.post});

  final Post? post;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('● 최종 전달 메시지',
                style:
                    AppTextStyles.body04.copyWith(color: AppColors.colorMain)),
            SvgPicture.asset('images/ic_arrow_right.svg',
                height: 20, width: 20),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Expanded(
              child: Text(
                post?.content ?? '내용이 없습니다.',
                style: AppTextStyles.body04,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
