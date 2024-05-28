import 'package:flutter/material.dart';
import 'package:idear/app/view/widgets/button/widget_button_profile_add.dart';
import 'package:idear/app/view/widgets/button/widget_button_profile.dart';
import 'package:idear/app/viewmodel/viewmodel_post_create.dart';
import 'package:idear/app/viewmodel/viewmodel_proflie.dart';
import 'package:provider/provider.dart';

class ListProfile extends StatelessWidget {
  const ListProfile({super.key, this.postCreateViewModel});

  final ViewModelPostCreate? postCreateViewModel;

  @override
  Widget build(BuildContext context) {
    final profileViewModel =
        Provider.of<ViewModelProfile>(context, listen: true);

    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: profileViewModel.profileList?.length ?? 0,
                itemBuilder: (context, index) {
                  return ButtonProfile(
                    profile: profileViewModel.profileList![index],
                    isEdit: profileViewModel.isEdit,
                    postCreateViewModel: postCreateViewModel,
                  );
                }),
            const ButtonProfileAdd(),
          ],
        ),
      ),
    );
  }
}
