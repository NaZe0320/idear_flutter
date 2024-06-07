import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';

class ExpandablePostViewSelect extends StatelessWidget {
  const ExpandablePostViewSelect({
    super.key,
  });

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
        const Text(
          '생일 축하해! 이 특별한 날을 기념하여 마음 가득한 축하의 말을 전하고 싶어요. 너의 생일은 항상 특별한 순간이야. 너의 유쾌한 에너지와 친절한 마음으로 언제나 ',
          style: AppTextStyles.body04,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
