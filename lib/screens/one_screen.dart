import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* User Bloc */
import 'package:app_state_flutter/bloc/user/user_bloc.dart';

// Widgets
import 'package:app_state_flutter/widgets/information_user_widget.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userBlocProvider = BlocProvider.of<UserBloc>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen #1'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_outline),
            onPressed: () {
              userBlocProvider.add(DeleteUserEvent());
            },
          ),
        ],
      ),
      /* Siempre Que Cambie El Estado De Mi Aplicación, El BlocBuilder Se Va A Reconstruir */
      body: BlocBuilder<UserBloc, UserState>(
        builder: (_, state) {
          return state.isUserExist
              ? InformationUserWidget(user: state.user!)
              : const Center(
                  child: Text('No Hay Usuario Seleccionado'),
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
