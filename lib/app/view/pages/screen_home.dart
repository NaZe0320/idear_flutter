import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:idear/app/view/pages/profile/screen_profile_list.dart';
import 'package:idear/app/view/pages/post/screen_post_create.dart';
import 'package:idear/app/view/widgets/expandable/widget_expandable_post_bundle.dart';
import 'package:idear/app/viewmodel/viewmodel_post.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:provider/provider.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ViewModelPost>(context, listen: true);
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: AppColors.colorBackground),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'images/ic_logo.svg',
                      height: 20,
                    ),
                    GestureDetector(
                      child: SvgPicture.asset(
                        'images/ic_menu.svg',
                        height: 24,
                      ),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ScreenProfileList())),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: viewModel.postBundle.length,
                    itemBuilder: (context, index) {
                      return Column(children: [
                        ExpandablePostBundle(index: index),
                        const SizedBox(height: 8)
                      ]);
                    }),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 56,
        height: 56,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ScreenPostCreate()),
            );
          },
          backgroundColor: const Color(0xFF0BA7A3),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)),
          child: const Icon(Icons.add),
        ),
      ),
    ));
  }
}
