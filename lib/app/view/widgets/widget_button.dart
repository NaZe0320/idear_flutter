import 'package:flutter/material.dart';
import 'package:idear/core/theme/app_colos.dart';
import 'package:idear/core/theme/app_text_styles.dart';

class ButtonDefault extends StatelessWidget {
  const ButtonDefault(
      {super.key,
      required this.text,
      required this.isEnable,
      required this.onTap});

  final String text;
  final bool isEnable;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: isEnable ? AppColors.colorMain : AppColors.colorGray200),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: Text(
            text,
            style: AppTextStyles.body03.copyWith(
                color:
                    isEnable ? AppColors.colorWhite : AppColors.colorGray500),
          ),
        ),
      ),
      onTap: () {
        if (isEnable) {
          onTap();
        }
      },
    );
  }
}
