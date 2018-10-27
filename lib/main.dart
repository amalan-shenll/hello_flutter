import 'package:flutter/material.dart';
import 'package:hello_flutter/splash.dart';
import 'package:hello_flutter/views/login/login_screen.dart';
import 'package:hello_flutter/views/home/home_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Sample App',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage()
      },
    );
  }
}
