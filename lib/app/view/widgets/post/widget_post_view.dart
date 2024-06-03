import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';

import 'widget_post_info.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'images/profiles/profile12.svg',
              width: 36,
              height: 36,
            ),
            const SizedBox(width: 8),
            const PostInfo(),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          decoration: const BoxDecoration(
            color: AppColors.colorWhite,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          height: 358,
          child: Column(
            children: [
              const SizedBox(
                height: 280,
                child: SingleChildScrollView(
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        'data',
                        style: AppTextStyles.body04,
                      )),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border:
                          Border.all(width: 1, color: AppColors.colorGray200),
                    ),
                    child: SvgPicture.asset('images/ic_star.svg'),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 36,
                    height: 36,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border:
                          Border.all(width: 1, color: AppColors.colorGray200),
                    ),
                    child: SvgPicture.asset('images/ic_share.svg'),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Material(
                      child: SizedBox(
                        height: 36,
                        child: Ink(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.colorMainLight),
                          child: const InkWell(
                            child: Center(
                              child: Text(
                                '완료하기',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: AppColors.colorWhite),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
