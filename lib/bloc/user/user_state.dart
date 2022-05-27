part of 'user_cubit.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {
  final isUserExist = false;

  @override
  String toString() {
    return 'Usuario Inicial: existeUsuario: false';
  }
}

class UserActive extends UserState {
  final isUserExist = true;
  final UserModel user;

  UserActive(this.user);

  @override
  String toString() {
    return 'Usuario Activo: existeUsuario: true; Modelo Del Usuario: Usuario;';
  }
}
