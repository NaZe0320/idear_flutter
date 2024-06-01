import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:idear/app/view/widgets/radio_button/widget_radio_button.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';

class RadioSituationButton extends RadioButton {
  const RadioSituationButton({
    super.key,
    required super.value,
    required super.groupValue,
    required super.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      onTap: onChanged,
      child: Container(
        padding: const EdgeInsets.all(12),
        height: 112,
        decoration: BoxDecoration(
          color:
              value == groupValue ? AppColors.colorMain : AppColors.colorWhite,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: AppColors.colorMain, width: 1.5),
        ),
        child: Column(
          children: [
            Expanded(
                child: Center(
              child: SvgPicture.asset(
                  'images/${value == groupValue ? value.trueImage : value.falseImage}.svg'),
            )),
            Text(
              value.text,
              style: AppTextStyles.body03.copyWith(
                  color: value == groupValue
                      ? AppColors.colorWhite
                      : AppColors.colorGray800),
            )
          ],
        ),
      ),
    );
  }
}
