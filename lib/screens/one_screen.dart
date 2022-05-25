import 'package:flutter/material.dart';

// Widgets
import 'package:app_state_flutter/widgets/information_user_widget.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen #1'),
      ),
      body: const InformationUserWidget(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new_outlined),
        onPressed: () => Navigator.pushNamed(context, 'twoScreen'),
      ),
    );
  }
}
