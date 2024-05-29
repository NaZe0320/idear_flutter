import 'package:flutter/material.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Toolbar extends StatelessWidget {
  const Toolbar({super.key, required this.title, this.icon, this.onTap});

  final String title;
  final String? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            child: GestureDetector(
              child: const Icon(
                Icons.arrow_back_ios,
                size: 24,
              ),
              onTap: () => Navigator.pop(context),
            ),
          ),
          Positioned(
            right: 0,
            child: icon != null
                ? GestureDetector(
                    child: SvgPicture.asset(
                      'images/ic_$icon.svg',
                    ),
                    onTap: () => {
                      if (onTap != null) {onTap!()}
                    },
                  )
                : Container(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 24,
                child: Center(
                  child: Text(
                    title,
                    style: AppTextStyles.subheading02
                        .copyWith(color: AppColors.colorBlack),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
