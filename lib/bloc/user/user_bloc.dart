/* 1. USER-BLOC => Es quién tiene la información de cual es el estado actual y procesa los eventos */

/* EJEMPLO: 
  El user va a venir del evento "ActivateUser" y lo voy a encontrar en el argumento event
  y basado en esa información, yo puedo emitir un nuevo estado para la aplicación.
*/
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

/* Models */
import 'package:app_state_flutter/models/models.dart';

/* Event And State User */
part 'user_event.dart';
part 'user_state.dart';

/* Disponemos De La Palabra state, Por La Palabra "Bloc" */
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<ActivateUserEvent>((event, emit) {
      // print('Activated User Called');
      emit(UserSetState(newUser: event.user));
    });

    on<DeleteUserEvent>((event, emit) {
      // print('Activated User Called');
      emit(const UserInitialState());
    });

    on<ChangeUserAgeEvent>((event, emit) {
      // print('Change Age Called');
      if (!state.isUserExist) return;
      /* Aquí Estamos Copiando El Usuario Y NO Estamos MUTANDO El Estado Original Del Usuario */
      emit(UserSetState(newUser: state.user!.copyWith(age: event.age)));
    });

    on<AdUserProfessionEvent>((event, emit) {
      if (!state.isUserExist) return;

      final professions = [...state.user!.professions, event.profession];

      /* Aquí Estamos Copiando El Usuario Y NO Estamos MUTANDO El Estado Original Del Usuario */
      emit(
        UserSetState(
          newUser: state.user!.copyWith(professions: professions),
        ),
      );
    });
  }
}
