import 'package:get/get.dart';
import 'package:flutter/material.dart';

// Screens
import 'package:app_state_flutter/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'States App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'oneScreen',
      /* routes: {
        'oneScreen': (_) => const OneScreen(),
        'twoScreen': (_) => const TwoScreen()
      }, */
      getPages: [
        GetPage(name: '/oneScreen', page: () => const OneScreen()),
        GetPage(name: '/twoScreen', page: () => const TwoScreen())
      ],
    );
  }
}
