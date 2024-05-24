import 'package:flutter/material.dart';
import 'package:idear/core/theme/app_colos.dart';
import 'package:idear/core/theme/app_text_styles.dart';

class RadioLabelButton extends Radio {
  const RadioLabelButton({
    super.key,
    this.padding = 10,
    required super.value,
    required super.groupValue,
    required super.onChanged,
  });

  final double padding;

  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged,
      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            color: value == groupValue
                ? AppColors.colorMain
                : AppColors.colorGray500),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: padding),
        child: Text(value,
            style: AppTextStyles.body03.copyWith(color: AppColors.colorWhite)),
      ),
    );
  }
}
