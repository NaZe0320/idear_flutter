import 'package:flutter/material.dart';
import 'package:idear/app/enums/private_keyword.dart';
import 'package:idear/app/enums/public_keyword.dart';
import 'package:idear/app/enums/relation.dart';
import 'package:idear/app/enums/situation.dart';
import 'package:idear/app/model/model_post.dart';
import 'package:idear/app/model/model_post_bundle.dart';
import 'package:idear/app/model/model_profile.dart';

class ViewModelPostCreate with ChangeNotifier {
  Profile? _selectedProfile;
  Profile? get selectedProfile => _selectedProfile;

  int _currentPage = 0;
  int get currentPage => _currentPage;

  bool _isCompletePage = false;
  bool get isCompletePage => _isCompletePage;

  final PostBundle _postBundle = PostBundle.create(id: null);
  PostBundle get postBundle => _postBundle;

  void changeCurrentPage(int i) {
    _currentPage = i;
    notifyListeners();
  }

  void createPost() async {
    _postBundle.posts = [
      Post(
          id: null,
          content:
              "상황 : ${postBundle.situation?.text} \n관계 : ${postBundle.relation?.text} \n키워드 : ${postBundle.publicKeyword?.text ?? postBundle.privateKeyword?.text}\n정보 입력 : ${postBundle.additional} \n 프로필 : ${postBundle.profile?.mbti}, ${postBundle.profile?.personality?.text}, ${postBundle.profile?.polite?.text}",
          favorite: false,
          request: null)
    ];
    notifyListeners();
  }

  void reCreatePost() async {
    _postBundle.posts?.add(Post(
        id: null,
        content:
            "상황 : ${postBundle.situation?.text} \n관계 : ${postBundle.relation?.text} \n키워드 : ${postBundle.publicKeyword?.text ?? postBundle.privateKeyword?.text}\n정보 입력 : ${postBundle.additional} \n프로필 : ${postBundle.profile?.mbti}, ${postBundle.profile?.personality?.text}, ${postBundle.profile?.polite?.text}\n재요청 : ${postBundle.posts?[(postBundle.posts?.length ?? 1) - 1]?.request}",
        favorite: false,
        request: null));
    notifyListeners();
  }

  void checkIsCompletePage() {
    if (currentPage == 0) {
      _isCompletePage =
          (postBundle.relation != null && postBundle.situation != null);
    } else if (currentPage == 1) {
      _isCompletePage = (postBundle.privateKeyword != null &&
              postBundle.situation == Situation.private) ||
          (postBundle.publicKeyword != null &&
              postBundle.situation == Situation.public);
    } else if (currentPage == 2) {
      _isCompletePage = postBundle.profile != null;
    } else {
      _isCompletePage = false;
    }
  }

  void setPostBundle<T>(T newValue) {
    if (newValue is Relation) {
      _postBundle.relation = newValue;
    } else if (newValue is Situation) {
      _postBundle.situation = newValue;
      _postBundle.privateKeyword = null;
      _postBundle.publicKeyword = null; //필요한 기능인지 고민 필요
    } else if (newValue is PrivateKeyword) {
      _postBundle.privateKeyword = newValue;
    } else if (newValue is PublicKeyword) {
      _postBundle.publicKeyword = newValue;
    } else if (newValue is Profile) {
      _postBundle.profile = newValue;
    }
    checkIsCompletePage();
    notifyListeners();
  }

  void setPostBundleAdditional(String text) {
    _postBundle.additional = text;
  }

  void setPostRequest(String text) {
    _postBundle.posts?[(_postBundle.posts?.length ?? 1) - 1]?.request = text;
  }
}
