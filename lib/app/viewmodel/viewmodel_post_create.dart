import 'package:flutter/material.dart';
import 'package:idear/app/model/model_profile.dart';

class ViewModelPostCreate with ChangeNotifier {
  Profile? _selectedProfile;
  Profile? get selectedProfile => _selectedProfile;
}
