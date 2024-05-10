import 'package:flutter/material.dart';
import 'package:flutter_application_6/pages/firstScreen.dart';
import 'package:flutter_application_6/pages/secendScreen.dart';
import 'package:flutter_application_6/pages/mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => const maniscr(),
        '/first': (context) => const firstscr(),
        '/second': (context) => const secendscr(),
      },
    );
  }
}
