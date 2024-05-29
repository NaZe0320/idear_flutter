import 'package:flutter/material.dart';
import 'package:idear/app/view/pages/profile/screen_profile_list.dart';
import 'package:idear/app/view/pages/post/screen_post_create.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
