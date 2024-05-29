import 'package:flutter/material.dart';
import 'package:idear/app/enums/personality.dart';
import 'package:idear/app/enums/profile_action_type.dart';
import 'package:idear/app/view/widgets/radio_group/widget_radio_group_label.dart';
import 'package:idear/app/view/widgets/radio_group/widget_radio_group_mbti.dart';
import 'package:idear/app/view/widgets/radio_group/widget_radio_group_polite.dart';
import 'package:idear/app/view/widgets/text/widget_text_profile_title.dart';
import 'package:idear/app/view/widgets/button/widget_button.dart';
import 'package:idear/app/view/widgets/widget_tool_bar.dart';
import 'package:idear/app/viewmodel/viewmodel_proflie.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:provider/provider.dart';

class ScreenProfileSetting extends StatelessWidget {
  const ScreenProfileSetting(
      {super.key, this.actionType = ProfileActionType.add});

  final ProfileActionType actionType;

  @override
  Widget build(BuildContext context) {
    final profileViewModel =
        Provider.of<ViewModelProfile>(context, listen: true);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Toolbar(
                title:
                    actionType == ProfileActionType.add ? '프로필 추가' : '프로필 수정'),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextProfileTitle(
                              title: '분위기 카테고리',
                              description: '프로필이 가지는 나만의 분위기를 골라보세요.'),
                          const SizedBox(height: 12),
                          RadioLabelGroup<Personality>(
                            enumValues: Personality.values,
                            selectValue:
                                profileViewModel.selectedProfile?.personality,
                            onChanged: (value) =>
                                profileViewModel.updateProfileValue(value),
                          ),
                          const SizedBox(height: 12),
                        ],
                      ),
                    ),
                    const Divider(
                      color: AppColors.colorGray400,
                      thickness: 1.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextProfileTitle(
                              title: '높임말 선택하기',
                              description: '내 프로필은 친근한 반말인가요? 공손한 존댓말인가요?'),
                          const SizedBox(height: 12),
                          RadioPoliteGroup(
                              selectValue:
                                  profileViewModel.selectedProfile?.polite,
                              onChanged: (value) =>
                                  profileViewModel.updateProfileValue(value)),
                          const SizedBox(height: 12),
                        ],
                      ),
                    ),
                    const Divider(
                      color: AppColors.colorGray400,
                      thickness: 1.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextProfileTitle(
                              title: 'MBTI 설정하기',
                              description: '나의 가상 프로필 MBTI 를 지정해보세요.'),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RadioMbtiGroup(
                                enumValues: const ['E', 'I'],
                                selectValue:
                                    profileViewModel.selectedProfile?.mbti[0],
                                onChanged: (value) => profileViewModel
                                    .updateProfileMBTI(value, 0),
                                index: 0,
                              ),
                              const SizedBox(width: 12),
                              RadioMbtiGroup(
                                enumValues: const ['N', 'S'],
                                selectValue:
                                    profileViewModel.selectedProfile?.mbti[1],
                                onChanged: (value) => profileViewModel
                                    .updateProfileMBTI(value, 1),
                                index: 1,
                              ),
                              const SizedBox(width: 12),
                              RadioMbtiGroup(
                                enumValues: const ['F', 'T'],
                                selectValue:
                                    profileViewModel.selectedProfile?.mbti[2],
                                onChanged: (value) => profileViewModel
                                    .updateProfileMBTI(value, 2),
                                index: 2,
                              ),
                              const SizedBox(width: 12),
                              RadioMbtiGroup(
                                enumValues: const ['P', 'J'],
                                selectValue:
                                    profileViewModel.selectedProfile?.mbti[3],
                                onChanged: (value) => profileViewModel
                                    .updateProfileMBTI(value, 3),
                                index: 3,
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ButtonDefault(
                text: actionType == ProfileActionType.add ? '추가하기' : '수정하기',
                isEnable: false,
                onTap: () async {
                  if (actionType == ProfileActionType.add) {
                    profileViewModel.createProfile();
                  } else {
                    profileViewModel.updateProfile();
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
