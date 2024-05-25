import 'package:flutter/material.dart';
import 'package:idear/app/enums/personality.dart';
import 'package:idear/app/enums/profile_action_type.dart';
import 'package:idear/app/view/widgets/radio_group/widget_radio_label_group.dart';
import 'package:idear/app/view/widgets/radio_group/widget_radio_mbti_group.dart';
import 'package:idear/app/view/widgets/radio_group/widget_radio_polite_group.dart';
import 'package:idear/app/view/widgets/text/widget_profile_title_text.dart';
import 'package:idear/app/view/widgets/widget_button.dart';
import 'package:idear/app/view/widgets/widget_tool_bar.dart';
import 'package:idear/core/theme/app_colors.dart';

class ScreenProfileSetting extends StatelessWidget {
  const ScreenProfileSetting(
      {super.key, this.actionType = ProfileActionType.add});

  final ProfileActionType actionType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Toolbar(
                title:
                    actionType == ProfileActionType.add ? '프로필 추가' : '프로필 수정'),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextProfileTitle(
                              title: '분위기 카테고리',
                              description: '프로필이 가지는 나만의 분위기를 골라보세요.'),
                          SizedBox(height: 12),
                          RadioLabelGroup<Personality>(
                              enumValues: Personality.values),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                    Divider(
                      color: AppColors.colorGray400,
                      thickness: 1.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextProfileTitle(
                              title: '높임말 선택하기',
                              description: '내 프로필은 친근한 반말인가요? 공손한 존댓말인가요?'),
                          SizedBox(height: 12),
                          RadioPoliteGroup(),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                    Divider(
                      color: AppColors.colorGray400,
                      thickness: 1.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextProfileTitle(
                              title: 'MBTI 설정하기',
                              description: '나의 가상 프로필 MBTI 를 지정해보세요.'),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RadioMbtiGroup(enumValues: ['E', 'I']),
                              SizedBox(width: 12),
                              RadioMbtiGroup(enumValues: ['N', 'S']),
                              SizedBox(width: 12),
                              RadioMbtiGroup(enumValues: ['F', 'T']),
                              SizedBox(width: 12),
                              RadioMbtiGroup(enumValues: ['P', 'J']),
                            ],
                          ),
                          SizedBox(height: 12),
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
                  if (actionType == ProfileActionType.add) {}
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
