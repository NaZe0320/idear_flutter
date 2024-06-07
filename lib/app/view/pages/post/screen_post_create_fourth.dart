import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:idear/app/view/widgets/post/widget_post_view.dart';
import 'package:idear/app/viewmodel/viewmodel_post_create.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';
import 'package:provider/provider.dart';

class ScreenPostCreateFourth extends StatelessWidget {
  const ScreenPostCreateFourth({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ViewModelPostCreate>(context, listen: true);
    return Container(
      color: AppColors.colorBackground,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                        height: 417,
                        child: PageView.custom(
                          controller: PageController(viewportFraction: 0.9),
                          childrenDelegate: SliverChildBuilderDelegate(
                              (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: PostView(
                                postBundle: viewModel.postBundle,
                                post: viewModel.postBundle.posts![index],
                              ),
                            );
                          },
                              childCount:
                                  viewModel.postBundle.posts?.length ?? 0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 28),
                      decoration: BoxDecoration(
                          color: const Color(0xFF7C7C7C),
                          borderRadius: BorderRadius.circular(20)),
                      child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            SvgPicture.asset('images/ic_rotate.svg',
                                colorFilter: const ColorFilter.mode(
                                    AppColors.colorWhite, BlendMode.srcATop)),
                            const SizedBox(width: 8),
                            GestureDetector(
                              child: const Text(
                                '재요청하기',
                                style: TextStyle(
                                    color: AppColors.colorWhite,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              ),
                              onTap: () {
                                viewModel.reCreatePost();
                              },
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.colorWhite),
                  child: TextField(
                    style: AppTextStyles.body03,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '피드백을 작성해서 글을 수정해주세요.',
                        hintStyle: AppTextStyles.body03
                            .copyWith(color: AppColors.colorGray600)),
                    onChanged: (value) {
                      viewModel.setPostRequest(value);
                    },
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: 52,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      color: AppColors.colorMain,
                    ),
                    child: SvgPicture.asset('images/ic_navigation.svg',
                        height: 24,
                        width: 24,
                        colorFilter: const ColorFilter.mode(
                            AppColors.colorWhite, BlendMode.srcATop)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
