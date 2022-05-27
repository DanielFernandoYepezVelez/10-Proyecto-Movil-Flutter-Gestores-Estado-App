import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/* Services */
import 'package:app_state_flutter/services/services.dart';

class InformationUserWidget extends StatelessWidget {
  const InformationUserWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);

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
          ListTile(title: Text('Name: ${userService.user.name}')),
          ListTile(title: Text('Age: ${userService.user.age}')),
          const Text(
            'Profesiones',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),

          /* Me Retorna Cada Profesión Dentro De Un ListTile De Forma Individual O Destructurada,
          Es Decir, Por Cada Iteración Me Retorna Un Widget, Y Además Debe Estar Dentro De Un Arreglo */
          ...userService.user.professions
              .map((profession) => ListTile(
                    title: Text(profession),
                  ))
              .toList(),
          /* ListTile(
            title: Text('Profession #1: ${userService.user.professions[0]}'),
          ),
          ListTile(
            title: Text('Profession #1: ${userService.user.professions[1]}'),
          ), 
          ListTile(
            title: Text('Profession #1: ${userService.user.professions[2]}'),
          ), */
        ],
      ),
    );
  }
}
