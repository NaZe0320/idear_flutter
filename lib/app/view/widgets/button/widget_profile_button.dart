import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:idear/app/view/pages/profile/screen_profile_setting.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';

class ButtonProfile extends StatelessWidget {
  const ButtonProfile({super.key, this.isEdit = true, this.isSelected = false});

  final bool isEdit;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(isSelected ? 11.5 : 12),
              decoration: BoxDecoration(
                  border: isSelected
                      ? Border.all(color: AppColors.colorMain, width: 1.5)
                      : Border.all(color: AppColors.colorGray200, width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'images/profiles/profile01.svg',
                        width: 48,
                        height: 48,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        '깔끔한 ESTJ (반말)',
                        style: AppTextStyles.body04,
                      ),
                    ],
                  ),
                  InkWell(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: Ink(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: AppColors.colorMain),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: Center(
                        child: Text(
                          isEdit ? '수정하기' : '삭제하기',
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      if (isEdit) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ScreenProfileSetting()));
                      } else {
                        //삭제하기
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
