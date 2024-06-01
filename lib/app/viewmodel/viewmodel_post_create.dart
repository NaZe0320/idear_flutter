import 'package:flutter/material.dart';
import 'package:idear/app/enums/private_keyword.dart';
import 'package:idear/app/enums/public_keyword.dart';
import 'package:idear/app/enums/relation.dart';
import 'package:idear/app/enums/situation.dart';
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

  void checkIsCompletePage() {
    if (currentPage == 0) {
      _isCompletePage =
          (postBundle.relation != null && postBundle.situation != null);
    } else if (currentPage == 1) {
      _isCompletePage = (postBundle.privateKeyword != null &&
              postBundle.situation == Situation.private) ||
          (postBundle.publicKeyword != null &&
              postBundle.situation == Situation.public);
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
    }
    checkIsCompletePage();
    notifyListeners();
  }

  void setPostBundleAdditional(String text) {
    _postBundle.additional = text;
  }
}
