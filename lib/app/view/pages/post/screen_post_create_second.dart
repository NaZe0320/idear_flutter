import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:idear/app/enums/private_keyword.dart';
import 'package:idear/app/enums/public_keyword.dart';
import 'package:idear/app/enums/situation.dart';
import 'package:idear/app/view/widgets/radio_group/widget_radio_group_label.dart';
import 'package:idear/app/viewmodel/viewmodel_post_create.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';
import 'package:provider/provider.dart';

class ScreenPostCreateSecond extends StatelessWidget {
  const ScreenPostCreateSecond({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ViewModelPostCreate>(context, listen: true);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            const Text(
              '메세지에 대한 키워드를 고르고\n추가적인 정보를 입력해주세요.',
              style: AppTextStyles.heading02,
            ),
            const SizedBox(height: 60),
            const Text(
              '키워드 설정',
              style: AppTextStyles.subheading02,
            ),
            const SizedBox(height: 12),
            if (viewModel.postBundle.situation == Situation.private)
              RadioLabelGroup<PrivateKeyword>(
                  enumValues: PrivateKeyword.values,
                  selectValue: viewModel.postBundle.privateKeyword,
                  onChanged: (value) {
                    viewModel.setPostBundle<PrivateKeyword>(value);
                  })
            else
              RadioLabelGroup<PublicKeyword>(
                  enumValues: PublicKeyword.values,
                  selectValue: viewModel.postBundle.publicKeyword,
                  onChanged: (value) {
                    viewModel.setPostBundle<PublicKeyword>(value);
                  }),
            const SizedBox(height: 60),
            const Text(
              '정보 입력',
              style: AppTextStyles.subheading02,
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: const BoxDecoration(
                  color: Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: TextField(
                style: AppTextStyles.body03,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '부가 정보를 입력하세요',
                  hintStyle: AppTextStyles.body03
                      .copyWith(color: AppColors.colorGray600),
                ),
                onChanged: (value) {
                  viewModel.setPostBundleAdditional(value);
                },
              ),
            ),
            Row(
              children: [
                SvgPicture.asset('images/ic_alert_circle.svg'),
                const SizedBox(width: 4),
                const Text(
                    style: AppTextStyles.caption04,
                    '호칭이나 요구사항을 넣어 더 좋을 글을 작성할 수 있어요.')
              ],
            )
          ],
        ),
      ),
    );
  }
}
