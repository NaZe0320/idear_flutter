import 'package:flutter/material.dart';
import 'package:idear/app/view/widgets/radio_button/widget_radio_button.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';

class RadioMbtiButton extends RadioButton {
  const RadioMbtiButton(
      {super.key,
      required super.value,
      required super.groupValue,
      required super.onChanged,
      this.noneSelect = false});

  final bool noneSelect;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChanged,
      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      child: Ink(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          color: noneSelect
              ? AppColors.colorGray500
              : value == groupValue
                  ? AppColors.colorMain
                  : AppColors.colorWhite,
        ),
        child: Center(
          child: Text(
            value,
            style: AppTextStyles.body03.copyWith(
              color: noneSelect
                  ? AppColors.colorWhite
                  : value == groupValue
                      ? AppColors.colorWhite
                      : AppColors.colorGray800,
            ),
          ),
        ),
      ),
    );
  }
}
