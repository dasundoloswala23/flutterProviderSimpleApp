import 'package:flutter/foundation.dart';

import 'package:flutter/foundation.dart';

class UserData with ChangeNotifier {
  String _name = '';
  String _phoneNumber = '';
  String _nic = '';
  String get name => _name;
  String get phoneNumber => _phoneNumber;
  String get nic => _nic;

  void setNamePhoneNumber(String name, String phoneNumber) {
    _name = name;
    _phoneNumber = phoneNumber;

    notifyListeners();
  }

  void setNicData(String nic) {

    _nic = nic;
    notifyListeners();
  }
}
