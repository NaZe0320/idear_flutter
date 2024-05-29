import 'package:flutter/material.dart';
import 'package:idear/app/model/model_profile.dart';

class ViewModelPostCreate with ChangeNotifier {
  Profile? _selectedProfile;
  Profile? get selectedProfile => _selectedProfile;

  int _currentPage = 0;
  int get currentPage => _currentPage;

  bool _isCompletePage = true;
  bool get isCompletePage => _isCompletePage;

  void changeCurrentPage(int i) {
    _currentPage = i;
    notifyListeners();
  }

  void checkIsCompletePage() {
    _isCompletePage = true;
  }
}
