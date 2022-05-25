import 'package:flutter/material.dart';

/* Services */
import 'package:app_state_flutter/services/services.dart';

/* Models */
import 'package:app_state_flutter/models/user_model.dart';

class ButtonsUserInformationWidget extends StatelessWidget {
  const ButtonsUserInformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              final UserModel user = UserModel(
                name: 'Eones School',
                age: '2',
                professions: [
                  'Aprendiz',
                  'Estudiante',
                  'Instructor',
                  'Entusiasta'
                ],
              );

              userService.loadUser(user);
            },
          ),
          MaterialButton(
            color: Colors.blue,
            child: const Text(
              'Age Change',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              userService.ageChange('40');
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
