import 'package:flutter/material.dart';
import 'package:idear/core/theme/app_colos.dart';
import 'package:idear/core/theme/app_text_styles.dart';

class RadioPoliteButton extends Radio {
  const RadioPoliteButton({
    super.key,
    required super.value,
    required super.groupValue,
    required super.onChanged,
  });

  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged,
      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      child: Ink(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              color: value == groupValue
                  ? AppColors.colorMain
                  : AppColors.colorWhite,
              border: value == groupValue
                  ? Border.all(width: 1, color: AppColors.colorMain)
                  : Border.all(width: 1, color: AppColors.colorGray500)),
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Center(
            child: Text(
              value,
              style: AppTextStyles.body03.copyWith(
                color: value == groupValue
                    ? AppColors.colorWhite
                    : AppColors.colorGray800,
              ),
            ),
          )),
    );
  }
}
