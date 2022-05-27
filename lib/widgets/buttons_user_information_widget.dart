import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/* Services */
import 'package:app_state_flutter/services/user_service.dart';

/* Models */
import 'package:app_state_flutter/models/models.dart';

class ButtonsUserInformation extends StatelessWidget {
  const ButtonsUserInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context, listen: false);

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
                age: '2',
                professions: ['Aprendiz', 'Instructor', 'Entusiasta'],
              );

              userService.user = user;
            },
          ),
          MaterialButton(
            color: Colors.blue,
            child: const Text(
              'Age Change',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => userService.ageChange('100'),
          ),
          MaterialButton(
            color: Colors.blue,
            child: const Text(
              'Add Profession',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => userService.addProfession(),
          ),
        ],
      ),
    );
  }
}
