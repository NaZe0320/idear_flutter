import 'package:flutter/material.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';

class RadioMbtiButton extends Radio {
  const RadioMbtiButton(
      {super.key,
      required super.value,
      required super.groupValue,
      required super.onChanged,
      this.noneSelect = false});

  final bool noneSelect;

  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => onChanged,
        borderRadius: BorderRadius.circular(8.0),
        child: Ink(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: noneSelect
                  ? AppColors.colorGray500
                  : value == groupValue
                      ? AppColors.colorMain
                      : AppColors.colorGray500,
              borderRadius: const BorderRadius.all(Radius.circular(8.0))),
          child: Center(
            child: Text(
              value,
              style: AppTextStyles.body03.copyWith(
                color: value == groupValue
                    ? AppColors.colorWhite
                    : AppColors.colorGray800,
              ),
            ),
          ),
        ));
  }
}
