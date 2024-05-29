import 'package:flutter/material.dart';
import 'package:idear/core/theme/app_colors.dart';

class IndicatorPost extends StatelessWidget {
  const IndicatorPost(
      {super.key, required int currentPage, required this.index})
      : _currentPage = currentPage;

  final int _currentPage;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 7,
      decoration: BoxDecoration(
          color: index < _currentPage
              ? AppColors.colorMainExtraLight
              : index == _currentPage
                  ? AppColors.colorMain
                  : AppColors.colorGray200,
          borderRadius: const BorderRadius.all(Radius.circular(7))),
    );
  }
}
