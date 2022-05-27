import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/* Services */
import 'package:app_state_flutter/services/services.dart';

// Widgets
import 'package:app_state_flutter/widgets/widgets.dart';

class TwoScreen extends StatelessWidget {
  const TwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: userService.isUserExist
            ? Text(userService.user.name)
            : const Text('Screen #2'),
      ),
      body: const ButtonsUserInformation(),
      floatingActionButton: const FloatingActionButton(onPressed: null),
    );
  }
}
