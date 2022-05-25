import 'package:flutter/material.dart';

/* Services */
import 'package:app_state_flutter/services/services.dart';

/* Models */
import 'package:app_state_flutter/models/models.dart';

// Widgets
import 'package:app_state_flutter/widgets/widgets.dart';

class TwoScreen extends StatelessWidget {
  const TwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: StreamBuilder<UserModel>(
          stream: userService.userStream,
          builder: (BuildContext context, AsyncSnapshot<UserModel> snapshot) {
            return snapshot.hasData
                ? Text('Nombre: ${snapshot.data!.name}')
                : const Text('Screen #2');
          },
        ),
      ),
      body: const ButtonsUserInformationWidget(),
      floatingActionButton: const FloatingActionButton(onPressed: null),
    );
  }
}
