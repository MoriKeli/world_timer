import 'package:flutter/material.dart';
import 'package:world_time/screens/home.dart';
import 'package:world_time/screens/location.dart';
import 'package:world_time/screens/start_screen.dart';

void main() => runApp(const TimeApp());

class TimeApp extends StatelessWidget {
  const TimeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/': (context) => StartScreen(),
        '/home': (context) => Homepage(),
        '/location': (context) => Location(),
      },
    );
  }
}
