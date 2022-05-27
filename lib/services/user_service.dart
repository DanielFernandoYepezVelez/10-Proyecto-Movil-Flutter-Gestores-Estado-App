/* Models */
import 'package:flutter/material.dart';
import 'package:app_state_flutter/models/models.dart';

class UserService with ChangeNotifier {
  UserModel? _user;

  /* La Ventaja De Estos Get, Es Que Yo Puedo Controlar Como Retorno Sus Valores Y Como Los Establesco */
  bool get isUserExist => _user != null ? true : false;

  UserModel get user => _user!;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  void ageChange(String age) {
    _user!.age = age;
    notifyListeners();
  }

  void removeUser() {
    _user = null;
    notifyListeners();
  }

  void addProfession() {
    _user!.professions.add('Profesión ${_user!.professions.length + 1}');
    notifyListeners();
  }
}
