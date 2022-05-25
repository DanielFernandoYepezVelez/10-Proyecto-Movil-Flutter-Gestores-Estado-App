import 'package:flutter/material.dart';

/* Models */
import 'package:app_state_flutter/models/models.dart';

class InformationUserWidget extends StatelessWidget {
  final UserModel user;

  const InformationUserWidget({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Personal Information',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ListTile(title: Text('Name: ${user.name}')),
          ListTile(title: Text('Age: ${user.age}')),
          const Text(
            'General Information',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ListTile(title: Text('Profession #1: ${user.professions[0]}')),
          ListTile(title: Text('Profession #2: ${user.professions[1]}')),
          ListTile(title: Text('Profession #3: ${user.professions[2]}')),
          ListTile(title: Text('Profession #4: ${user.professions[3]}')),
        ],
      ),
    );
  }
}
