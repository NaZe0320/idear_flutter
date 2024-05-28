import 'package:flutter/material.dart';
import 'package:idear/app/view/widgets/button/widget_profile_add_button.dart';
import 'package:idear/app/view/widgets/button/widget_profile_button.dart';

class ListProfile extends StatelessWidget {
  const ListProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ButtonProfile();
                }),
            const ButtonProfileAdd(),
          ],
        ),
      ),
    );
  }
}
