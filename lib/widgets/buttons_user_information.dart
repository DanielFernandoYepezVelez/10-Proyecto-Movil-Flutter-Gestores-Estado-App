import 'package:app_state_flutter/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* User Cubit */
import 'package:app_state_flutter/bloc/user/user_cubit.dart';

class ButtonsUserInformation extends StatelessWidget {
  const ButtonsUserInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userCubt = context.read<UserCubit>();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            color: Colors.blue,
            child: const Text(
              'Set User',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              final user = UserModel(
                name: 'Eones School',
                age: '50',
                professions: ['Estudiante', 'Aprendiz', 'Entusiasta'],
              );

              userCubt.selectedUser(user);
            },
          ),
          MaterialButton(
            color: Colors.blue,
            child: const Text(
              'Age Change',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              userCubt.ageChange('100');
            },
          ),
          MaterialButton(
              color: Colors.blue,
              child: const Text('Add Profession',
                  style: TextStyle(color: Colors.white)),
              onPressed: () {}),
        ],
      ),
    );
  }
}
