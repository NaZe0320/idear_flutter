import 'package:flutter/material.dart';
import 'package:idear/app/enums/personality.dart';
import 'package:idear/app/enums/polite.dart';
import 'package:idear/app/enums/private_keyword.dart';
import 'package:idear/app/enums/relation.dart';
import 'package:idear/app/enums/situation.dart';
import 'package:idear/app/model/model_post.dart';
import 'package:idear/app/model/model_post_bundle.dart';
import 'package:idear/app/model/model_profile.dart';

class ViewModelPost with ChangeNotifier {
  final List<PostBundle> _postBundle = List.of([
    PostBundle(
        id: null,
        profile: Profile(
            id: 1,
            imageId: 2,
            personality: Personality.meticulous,
            polite: Polite.private,
            mbti: ['I', 'S', 'T', 'J']),
        situation: Situation.private,
        relation: Relation.acquaintance,
        privateKeyword: PrivateKeyword.advice,
        createAt: "2024-06-08",
        posts: [
          Post(content: "첫번째 내용입니다~"),
          Post(content: "두번째 내용입니다~"),
          Post(content: "세번째 내용입니다~"),
          Post(content: "네번째 내용입니다~"),
        ]),
    PostBundle(
        id: null,
        profile: Profile(
            id: 2,
            imageId: 3,
            personality: Personality.approachable,
            polite: Polite.public,
            mbti: ['E', 'N', 'T', 'P']),
        situation: Situation.private,
        relation: Relation.customer,
        privateKeyword: PrivateKeyword.birthdayCongratulation,
        createAt: "2024-06-08",
        posts: [
          Post(content: "두번째 내용입니다~"),
        ]),
  ]);
  List<PostBundle> get postBundle => _postBundle;
}
