import 'package:flutter/material.dart';
import 'package:ui_screens_test/ui/screens/login/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pocket Look',
      theme: ThemeData(
        fontFamily: 'Ubuntu',
      ),
      home: LoginScreen(),
    );
  }
}
