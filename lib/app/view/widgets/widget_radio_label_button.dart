import 'package:flutter/material.dart';
import 'package:idear/core/theme/app_colos.dart';
import 'package:idear/core/theme/app_text_styles.dart';

class RadioLabelButton extends StatelessWidget {
  const RadioLabelButton(
      {super.key,
      required this.text,
      required this.isSelected,
      required this.onTap,
      this.padding = 10});

  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: isSelected ? AppColors.colorMain : AppColors.colorGray500),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: padding),
        child: Text(text,
            style: AppTextStyles.body03.copyWith(color: AppColors.colorWhite)),
      ),
    );
  }
}
