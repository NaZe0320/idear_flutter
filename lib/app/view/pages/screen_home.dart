import 'package:flutter/material.dart';
import 'package:idear/app/view/pages/profile/screen_profile_list.dart';
import 'package:idear/app/view/pages/post/screen_post_create.dart';
import 'package:idear/app/view/widgets/expandable/widget_expandable_post_bundle.dart';
import 'package:idear/core/theme/app_colors.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(color: AppColors.colorBackground),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  child: const Text('프로필'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenProfileList()));
                  },
                ),
                OutlinedButton(
                  child: const Text('글 생성'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenPostCreate()));
                  },
                ),
                const ExpandablePostBundle(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
