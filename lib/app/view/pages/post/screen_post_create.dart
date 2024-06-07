import 'package:flutter/material.dart';
import 'package:idear/app/view/pages/post/screen_post_create_first.dart';
import 'package:idear/app/view/pages/post/screen_post_create_fourth.dart';
import 'package:idear/app/view/pages/post/screen_post_create_second.dart';
import 'package:idear/app/view/pages/post/screen_post_create_third.dart';
import 'package:idear/app/view/widgets/button/widget_button.dart';
import 'package:idear/app/view/widgets/widget_indicator_post.dart';
import 'package:idear/app/viewmodel/viewmodel_post_create.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:provider/provider.dart';

class ScreenPostCreate extends StatefulWidget {
  const ScreenPostCreate({super.key});

  @override
  State<ScreenPostCreate> createState() => _ScreenPostCreateState();
}

class _ScreenPostCreateState extends State<ScreenPostCreate> {
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ViewModelPostCreate(),
      child: Scaffold(
        body: SafeArea(
          child: Consumer<ViewModelPostCreate>(
            builder: (context, viewModel, child) {
              return Container(
                decoration: BoxDecoration(
                    color: viewModel.currentPage == 3
                        ? AppColors.colorBackground
                        : AppColors.colorWhite),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                                  4,
                                  (index) => IndicatorPost(
                                      currentPage: viewModel.currentPage,
                                      index: index))
                              .map((dot) => Expanded(child: dot))
                              .toList(),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 16),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                              if (_controller.page != 0 &&
                                  _controller.page != 3) {
                                _controller.previousPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeInOut);
                              } else {
                                Navigator.pop(context);
                              }
                            },
                            child: const Icon(
                              Icons.arrow_back_ios,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Material(
                        child: PageView(
                          controller: _controller,
                          physics: const NeverScrollableScrollPhysics(),
                          onPageChanged: (int page) {
                            setState(() {
                              viewModel.changeCurrentPage(page);
                              viewModel.checkIsCompletePage();
                            });
                          },
                          children: const <Widget>[
                            ScreenPostCreateFirst(),
                            ScreenPostCreateSecond(),
                            ScreenPostCreateThird(),
                            ScreenPostCreateFourth()
                          ],
                        ),
                      ),
                    ),
                    if (viewModel.currentPage != 3)
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ButtonDefault(
                          text: '다음',
                          isEnable: viewModel.isCompletePage,
                          onTap: () {
                            FocusScope.of(context).unfocus();
                            if (viewModel.currentPage == 2) {
                              viewModel.createPost();
                            }
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut);
                          },
                        ),
                      )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
