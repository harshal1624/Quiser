import 'package:flutter/material.dart';
import 'package:quiser/screens/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiser',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF2661FA),
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}
