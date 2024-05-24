import 'package:flutter/material.dart';
import 'package:idear/app/view/widgets/widget_radio_button.dart';
import 'package:idear/core/theme/app_colos.dart';
import 'package:idear/core/theme/app_text_styles.dart';

class RadioPoliteButton extends RadioButton {
  const RadioPoliteButton({
    super.key,
    required super.text,
    required super.isSelected,
    required super.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      child: Ink(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              color: isSelected == true
                  ? AppColors.colorMain
                  : AppColors.colorWhite,
              border: isSelected == true
                  ? Border.all(width: 1, color: AppColors.colorMain)
                  : Border.all(width: 1, color: AppColors.colorGray500)),
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Center(
            child: Text(
              text,
              style: AppTextStyles.body03.copyWith(
                color: isSelected == true
                    ? AppColors.colorWhite
                    : AppColors.colorGray800,
              ),
            ),
          )),
    );
  }
}
