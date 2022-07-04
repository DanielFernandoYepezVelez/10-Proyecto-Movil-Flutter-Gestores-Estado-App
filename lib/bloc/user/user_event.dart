/* 2. USER-Event => Son Acciones que los usuarios van a disparar en mi aplicación, 
  que van a ser recibidas por el archivo bloc y van a cambiar el state. 
  
  EJEMPLO: Cuando dispares este evento deben entregarme el user del tipo UserModel
*/

part of 'user_bloc.dart';

/* La Clase Abstracta Me Ayuda A Decirle A Mi Bloc El Tipo De Eventos Que Yo Espero,
Que En Este Caso, Son Del Tipo UserEvent */
@immutable
abstract class UserEvent {}

/* Este Evento Me Sirve Para Crear Un Usuario Y Siempre
Que Llame Este Evento, Siempre Debe Recibir Un Usuario
Como Argumento, Del Tipo De Dato UserModel */
class ActivateUserEvent extends UserEvent {
  final UserModel user;
  ActivateUserEvent(this.user);
}

class ChangeUserAgeEvent extends UserEvent {
  final String age;
  ChangeUserAgeEvent(this.age);
}

class AdUserProfessionEvent extends UserEvent {
  final String profession;
  AdUserProfessionEvent(this.profession);
}

class DeleteUserEvent extends UserEvent {}
