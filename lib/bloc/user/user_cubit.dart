import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* Models */
import 'package:app_state_flutter/models/models.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  void selectedUser(UserModel user) {
    emit(UserActive(user));
  }

  void ageChange(String age) {
    // emit(state)
  }
}
