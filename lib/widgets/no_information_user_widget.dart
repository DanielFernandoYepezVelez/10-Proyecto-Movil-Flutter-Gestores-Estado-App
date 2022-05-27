import 'package:flutter/cupertino.dart';

class NoInformationUserWidget extends StatelessWidget {
  const NoInformationUserWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No Hay Un Usuario Seleccionado'),
    );
  }
}
