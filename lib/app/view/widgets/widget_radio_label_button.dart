import 'package:flutter/material.dart';
import 'package:idear/app/view/widgets/widget_radio_button.dart';
import 'package:idear/core/theme/app_colos.dart';
import 'package:idear/core/theme/app_text_styles.dart';

class RadioLabelButton extends RadioButton {
  const RadioLabelButton({
    super.key,
    required super.text,
    required super.isSelected,
    required super.onTap,
    this.padding = 10,
  });

  final double padding;

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
                : AppColors.colorGray500),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: padding),
        child: Text(text,
            style: AppTextStyles.body03.copyWith(color: AppColors.colorWhite)),
      ),
    );
  }
}
