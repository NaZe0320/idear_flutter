import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:idear/app/model/model_post.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';

class ExpandablePostView extends StatelessWidget {
  const ExpandablePostView({super.key, required this.post});

  final Post? post;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.colorGray100,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              post?.content ?? '내용이 없습니다.',
              style: AppTextStyles.body04,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
            ),
          ),
          SvgPicture.asset('images/ic_arrow_right.svg', height: 20, width: 20),
        ],
      ),
    );
  }
}
