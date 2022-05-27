import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/* Services */
import 'package:app_state_flutter/services/services.dart';

// Widgets
import 'package:app_state_flutter/widgets/widgets.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Screen #1'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => userService.removeUser(),
          ),
        ],
      ),
      body: userService.isUserExist
          ? const InformationUserWidget()
          : const NoInformationUserWidget(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new_outlined),
        onPressed: () => Navigator.pushNamed(context, 'twoScreen'),
      ),
    );
  }
}
