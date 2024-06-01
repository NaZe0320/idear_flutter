import 'package:flutter/material.dart';
import 'package:idear/app/enums/polite.dart';
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
    } else {
      _isCompletePage = false;
    }
  }

  void setPostBundle<T>(T newValue) {
    if (newValue is Relation) {
      postBundle.relation = newValue;
    } else if (newValue is Situation) {
      postBundle.situation = newValue;
    }
    checkIsCompletePage();
    notifyListeners();
  }
}
