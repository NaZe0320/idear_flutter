import 'package:flutter/material.dart';
import 'package:idear/core/theme/app_colors.dart';

class ScreenWrite extends StatelessWidget {
  const ScreenWrite({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: AppColors.colorMain,
    ));
  }
}
