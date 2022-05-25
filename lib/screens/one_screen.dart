import 'package:flutter/material.dart';

/* Services */
import 'package:app_state_flutter/services/services.dart';

/* Models */
import 'package:app_state_flutter/models/models.dart';

// Widgets
import 'package:app_state_flutter/widgets/widgets.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Screen #1'),
      ),
      body: StreamBuilder<UserModel>(
        stream: userService.userStream,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? InformationUserWidget(user: snapshot.data!)
              : const NoInformationAvailableWidget(
                  message: 'No Hay Información Del Usuario',
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new_outlined),
        onPressed: () => Navigator.pushNamed(context, 'twoScreen'),
      ),
    );
  }
}
