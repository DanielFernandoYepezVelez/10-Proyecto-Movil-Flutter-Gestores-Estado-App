import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* Cubit */
import 'package:app_state_flutter/bloc/user/user_cubit.dart';

// Screens
import 'package:app_state_flutter/screens/screens.dart';

void main() {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserCubit()),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'States App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'oneScreen',
      routes: {
        'oneScreen': (_) => const OneScreen(),
        'twoScreen': (_) => const TwoScreen()
      },
    );
  }
}
