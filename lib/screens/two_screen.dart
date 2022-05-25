import 'package:flutter/material.dart';

// Widgets
import 'package:app_state_flutter/widgets/widgets.dart';

class TwoScreen extends StatelessWidget {
  const TwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen #1'),
      ),
      body: const ButtonsUserInformation(),
      floatingActionButton: const FloatingActionButton(onPressed: null),
    );
  }
}