import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* User Cubit And State */
import '../bloc/user/user_cubit.dart';

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
      body: const BodyScaffold(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new_outlined),
        onPressed: () => Navigator.pushNamed(context, 'twoScreen'),
      ),
    );
  }
}

class BodyScaffold extends StatelessWidget {
  const BodyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (_, state) {
        switch (state.runtimeType) {
          case UserInitial:
            return const Center(
              child: Text('No Hay Información Disponible Del Usuario'),
            );

          case UserActive:
            return InformationUserWidget(user: (state as UserActive).user);

          default:
            return const Center(child: Text('Estado No Reconocido'));
        }

        /* if (state is UserInitial) {
          return const Center(
              child: Text('No Hay Información Disponible Del Usuario'));
        } else if (state is UserActive) {
          return InformationUserWidget(user: state.user);
        } else {
          return const Center(child: Text('Estado No Reconocido'));
        } */
      },
    );
  }
}
