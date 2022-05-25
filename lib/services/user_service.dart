import 'dart:async';

/* Model */
import 'package:app_state_flutter/models/models.dart';

class _UserService {
  UserModel? _user;

  /* EL Manejador De Estado Singleton Trabaja Con Streams (Se Conocio En La Primera Versión De Peliculas App) */
  final StreamController<UserModel> _userStreamController =
      StreamController<UserModel>.broadcast();

  /* Esto No Son Métodos Getters, Se Deben Ver Como Propiedades */
  UserModel get user => _user!;
  bool get isUserExist => _user != null ? true : false;
  Stream<UserModel> get userStream => _userStreamController.stream;

  void loadUser(UserModel user) {
    _user = user;
    _userStreamController.add(user);
  }

  void ageChange(String age) {
    _user!.age = age;
    _userStreamController.add(user);
  }

  void dispose() {
    _userStreamController.close();
  }
}

final userService = _UserService();
