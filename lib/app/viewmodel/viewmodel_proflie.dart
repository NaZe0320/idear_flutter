import 'package:flutter/material.dart';
import 'package:idear/app/enums/personality.dart';
import 'package:idear/app/enums/polite.dart';
import 'package:idear/app/model/model_profile.dart';
import 'package:idear/app/services/mock/mock_profile.dart';

class ViewModelProfile with ChangeNotifier {
  MockProfile mock = MockProfile();

  List<Profile>? _profileList = [];
  List<Profile>? get profileList => _profileList;

  Profile? _selectedProfile;
  Profile? get selectedProfile => _selectedProfile;

  bool _isEdit = true;
  bool get isEdit => _isEdit;

  ViewModelProfile() {
    init();
  }

  void init() async {
    _profileList = await mock.getProfileList();
    notifyListeners();
  }

  //수정, 삭제 상태 변경
  void setEditable() {
    _isEdit = !_isEdit;
    notifyListeners();
  }

  //Profile 추가
  void createProfile() async {
    if (_selectedProfile != null) {
      _profileList = await mock.createProfile(_selectedProfile!);
      notifyListeners();
    }
  }

  //Profile 삭제
  void deleteProfile(int id) async {
    _profileList = await mock.deleteProfile(id);
    notifyListeners();
  }

  //Profile 수정
  void updateProfile() async {
    if (_selectedProfile != null) {
      _profileList = await mock.updateProfile(_selectedProfile!);
      notifyListeners();
    }
  }

  //Profile 선택
  void selectProfile(int id) async {
    if (_profileList != null) {
      _selectedProfile =
          _profileList!.firstWhere((profile) => profile.id == id);
    }
  }

  void updateProfileValue<T>(T newValue) {
    if (_selectedProfile != null) {
      if (newValue is Personality) {
        _selectedProfile!.personality = newValue;
      } else if (newValue is Polite) {
        _selectedProfile!.polite = newValue;
      }
      notifyListeners();
    }
  }
}
