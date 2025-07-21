import 'package:flutter/material.dart';
import '../models/user.dart';

class UserProvider with ChangeNotifier {
  String _userName = '';
  User? _selectedUser;

  String get userName => _userName;
  User? get selectedUser => _selectedUser;

  void setUserName(String name) {
    _userName = name;
    notifyListeners();
  }

  void setSelectedUser(User user) {
    _selectedUser = user;
    notifyListeners();
  }
}
