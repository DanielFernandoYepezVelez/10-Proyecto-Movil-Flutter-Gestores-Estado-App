import 'package:flutter/material.dart';

class ButtonsUserInformation extends StatelessWidget {
  const ButtonsUserInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              color: Colors.blue,
              child: const Text('Set User', style: TextStyle(color: Colors.white)),
              onPressed: () {}
          ),
          MaterialButton(
              color: Colors.blue,
              child: const Text('Age Change', style: TextStyle(color: Colors.white)),
              onPressed: () {}
          ),
          MaterialButton(
              color: Colors.blue,
              child: const Text('Add Profession', style: TextStyle(color: Colors.white)),
              onPressed: () {}
          ),
        ],
      ),
    );
  }
}