import 'package:flutter/material.dart';
import 'package:idear/app/view/widgets/radio_button/widget_radio_button.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';

class RadioLabelButton extends RadioButton {
  const RadioLabelButton({
    super.key,
    this.padding = 10,
    required super.value,
    required super.groupValue,
    required super.onChanged,
  });

  final double padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChanged,
      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            color: value == groupValue
                ? AppColors.colorMain
                : AppColors.colorGray500),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: padding),
        child: Text(value.text,
            style: AppTextStyles.body03.copyWith(color: AppColors.colorWhite)),
      ),
    );
  }
}
