import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:idear/app/view/widgets/expandable/widget_expandable_post_view.dart';
import 'package:idear/app/view/widgets/post/widget_post_info.dart';
import 'package:idear/app/viewmodel/viewmodel_post.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:provider/provider.dart';

import 'widget_expandable_post_view_select.dart';

class ExpandablePostBundle extends StatefulWidget {
  const ExpandablePostBundle({super.key});

  @override
  State<ExpandablePostBundle> createState() => _ExpandablePostBundleState();
}

class _ExpandablePostBundleState extends State<ExpandablePostBundle> {
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ViewModelPost>(context, listen: true);
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.colorWhite,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PostInfo(postBundle: viewModel.postBundle.first),
              InkWell(
                  onTap: () {
                    setState(() {
                      isExpand = !isExpand;
                    });
                  },
                  child: SvgPicture.asset('images/ic_arrow_up.svg',
                      height: 24, width: 24)),
            ],
          ),
          if (isExpand)
            Column(
              children: [
                const SizedBox(height: 12),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.colorGray100,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  child: const ExpandablePostViewSelect(),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return const Column(
                        children: [SizedBox(height: 8), ExpandablePostView()],
                      );
                    })
              ],
            ),
        ],
      ),
    );
  }
}
