import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:idear/core/theme/app_colors.dart';

class ButtonProfileAdd extends StatelessWidget {
  const ButtonProfileAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      child: Ink(
        decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.colorGray200,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('images/ic_plus.svg', height: 24, width: 24),
                const SizedBox(height: 4),
                const Text(
                  '프로필 추가하기',
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColors.colorGray800,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
