import 'package:get/get.dart';
import 'package:flutter/material.dart';

/* User Controller */
import 'package:app_state_flutter/controllers/controllers.dart';

/* Screen */
// import 'package:app_state_flutter/screens/screens.dart';

// Widgets
import 'package:app_state_flutter/widgets/widgets.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userController = Get.put(UserController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen #1'),
      ),
      body: Obx(
        () => userController.isUserExist.value
            ? InformationUserWidget(user: userController.user.value)
            : const NoInformationUserWdiget(),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new_outlined),
        // onPressed: () => Navigator.pushNamed(context, 'twoScreen'),
        // onPressed: () => Get.to(const TwoScreen()),
        onPressed: () => Get.toNamed('twoScreen',
            arguments: {'name': 'Eones School', 'age': '100'}),
      ),
    );
  }
}
