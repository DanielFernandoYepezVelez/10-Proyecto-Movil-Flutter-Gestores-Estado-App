import 'package:flutter/material.dart';

class InformationUserWidget extends StatelessWidget {
  const InformationUserWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Personal Information', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),

          ListTile(title: Text('Name: ')),
          ListTile(title: Text('Age: ')),

          Text('General Information', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),

          ListTile(title: Text('Profession #1: ')),
          ListTile(title: Text('Profession #1: ')),
          ListTile(title: Text('Profession #1: ')),
        ],
      ),
    );
  }
}
