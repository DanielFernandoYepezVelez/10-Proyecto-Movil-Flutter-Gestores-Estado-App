import 'package:flutter/material.dart';

class NoInformationUserWdiget extends StatelessWidget {
  const NoInformationUserWdiget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Center(
        child: Text('No Hay Un Usuario Seleccionado'),
      ),
    );
  }
}
