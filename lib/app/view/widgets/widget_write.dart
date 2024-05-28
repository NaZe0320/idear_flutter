import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';

import 'widget_write_info.dart';

class Write extends StatelessWidget {
  const Write({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'images/profiles/profile12.svg',
              width: 36,
              height: 36,
            ),
            const SizedBox(height: 8),
            const WriteInfo(),
            const SizedBox(height: 16),
            Container()
          ],
        )
      ],
    );
  }
}
