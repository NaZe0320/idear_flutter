import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:idear/app/enums/profile_action_type.dart';
import 'package:idear/app/model/model_profile.dart';
import 'package:idear/app/view/pages/profile/screen_profile_setting.dart';
import 'package:idear/app/viewmodel/viewmodel_post_create.dart';
import 'package:idear/app/viewmodel/viewmodel_proflie.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:idear/core/theme/app_text_styles.dart';
import 'package:provider/provider.dart';

class ButtonProfile extends StatelessWidget {
  const ButtonProfile(
      {super.key,
      required this.profile,
      this.isEdit = true,
      this.postCreateViewModel});

  final Profile profile;
  final bool isEdit;
  final ViewModelPostCreate? postCreateViewModel;

  @override
  Widget build(BuildContext context) {
    final profileViewModel =
        Provider.of<ViewModelProfile>(context, listen: true);
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(
                postCreateViewModel?.selectedProfile?.id == profile.id
                    ? 11.5
                    : 12),
            decoration: BoxDecoration(
                border: postCreateViewModel?.selectedProfile?.id == profile.id
                    ? Border.all(color: AppColors.colorMain, width: 1.5)
                    : Border.all(color: AppColors.colorGray200, width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'images/profiles/profile${profile.imageId.toString().padLeft(2, '0')}.svg',
                      width: 48,
                      height: 48,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '${profile.personality?.text} ${profile.mbti.join('')} (${profile.polite?.text})',
                      style: AppTextStyles.body04,
                    ),
                  ],
                ),
                InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: Ink(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: AppColors.colorMain),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Center(
                      child: Text(
                        isEdit ? '수정하기' : '삭제하기',
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    if (isEdit) {
                      profileViewModel.selectProfile(profile.id);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ScreenProfileSetting(
                                    actionType: ProfileActionType.modify,
                                  )));
                    } else {
                      profileViewModel.deleteProfile(profile.id);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
