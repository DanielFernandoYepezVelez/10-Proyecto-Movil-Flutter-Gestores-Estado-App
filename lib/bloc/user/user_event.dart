/* 2. USER-Event => Son Acciones que los usuarios van a disparar en mi aplicación, 
  que van a ser recibidas por el archivo bloc y van a cambiar el archivo state. 
  
  EJEMPLO: Cuando dispares este evento deben entregarme el user del tipo UserModel
*/

part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

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
