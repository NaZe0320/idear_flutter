import 'package:flutter/material.dart';
import 'package:idear/app/view/widgets/post/widget_post_info.dart';
import 'package:idear/app/view/widgets/post/widget_post_view.dart';
import 'package:idear/app/viewmodel/viewmodel_post_create.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:provider/provider.dart';

class ScreenPostCreateFourth extends StatelessWidget {
  const ScreenPostCreateFourth({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ViewModelPostCreate>(context, listen: true);
    return Container(
      color: AppColors.colorGray300,
      child: const Column(
        children: [PostView()],
      ),
    );
  }
}
