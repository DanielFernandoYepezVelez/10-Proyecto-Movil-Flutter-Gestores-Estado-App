/* 3. USER-State => Como se encuentra el estado de la aplicación,
 Como luce la data, Como mantego la información en el state */

part of 'user_bloc.dart';

/* La Clase Abstracta Me Ayuda A Decirle A Mi Bloc El Tipo De Estados Con El Que 
La Aplicación Va A Trabajar Que En Este Caso, Son Del Tipo UserState */
@immutable
abstract class UserState {
  final bool isUserExist;
  final UserModel? user;

  const UserState({this.isUserExist = false, this.user});
}

class UserInitialState extends UserState {
  /* Super => Esta LLamando La Clase Padre, Que Sería La Clase Abstracta */
  const UserInitialState() : super(isUserExist: false, user: null);
}

/* ================================================================== */

class UserSetState extends UserState {
  final UserModel newUser;

  /* Super => Esta LLamando La Clase Padre, Que Sería La Clase Abstracta */
  const UserSetState({required this.newUser})
      : super(isUserExist: true, user: newUser);
}
