import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* User Bloc */
import 'package:app_state_flutter/bloc/user/user_bloc.dart';

/* Models */
import 'package:app_state_flutter/models/models.dart';

class ButtonsUserInformation extends StatelessWidget {
  const ButtonsUserInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userBlocProvider = BlocProvider.of<UserBloc>(context, listen: false);

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
                name: 'Eones School YouTube',
                age: '99',
                professions: ['Aprendiz', 'Estudiante', 'Entusiasta'],
              );

              /* BlocProvider.of<UserBloc>(context, listen: false)
                  .add(ActivateUserEvent(user)); */

              userBlocProvider.add(ActivateUserEvent(user));
            },
          ),
          MaterialButton(
            color: Colors.blue,
            child: const Text(
              'Age Change',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              /* BlocProvider.of<UserBloc>(context, listen: false)
                  .add(ChangeUserAgeEvent('100')); */

              userBlocProvider.add(ChangeUserAgeEvent('200'));
            },
          ),
          MaterialButton(
            color: Colors.blue,
            child: const Text(
              'Add Profession',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              userBlocProvider.add(AdUserProfessionEvent('Profesión Estatica'));
            },
          ),
        ],
      ),
    );
  }
}
