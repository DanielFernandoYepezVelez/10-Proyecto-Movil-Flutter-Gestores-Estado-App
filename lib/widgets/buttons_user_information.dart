import 'package:get/get.dart';
import 'package:flutter/material.dart';

/* User Controller */
import 'package:app_state_flutter/controllers/controllers.dart';

/* Models */
import 'package:app_state_flutter/models/models.dart';

class ButtonsUserInformation extends StatelessWidget {
  const ButtonsUserInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userCtrl = Get.find<UserController>();

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
              UserModel user = UserModel(name: 'EONES SCHOOL', age: '100');
              userCtrl.loadUser(user);
            },
          ),
          MaterialButton(
            color: Colors.blue,
            child: const Text(
              'Age Change',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              userCtrl.changeAge('99');
            },
          ),
          MaterialButton(
            color: Colors.blue,
            child: const Text('Add Profession',
                style: TextStyle(color: Colors.white)),
            onPressed: () {
              userCtrl.adProfession(
                // 'profession #${userCtrl.user.value.professions.length + 1}',
                'profession #${userCtrl.countProfessions}',
              );
            },
          ),
        ],
      ),
    );
  }
}
