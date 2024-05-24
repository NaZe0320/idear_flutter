import 'package:flutter/material.dart';
import 'package:idear/app/view/widgets/widget_radio_button.dart';
import 'package:idear/core/theme/app_colos.dart';
import 'package:idear/core/theme/app_text_styles.dart';

class RadioMbtiButton extends RadioButton {
  const RadioMbtiButton(
      {super.key,
      required super.text,
      required super.isSelected,
      required super.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.0),
        child: Ink(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: isSelected == null
                  ? AppColors.colorGray500
                  : isSelected == true
                      ? AppColors.colorMain
                      : AppColors.colorGray500,
              borderRadius: const BorderRadius.all(Radius.circular(8.0))),
          child: Center(
            child: Text(
              text,
              style: AppTextStyles.body03.copyWith(
                color: isSelected == true
                    ? AppColors.colorWhite
                    : AppColors.colorGray800,
              ),
            ),
          ),
        ));
  }
}
