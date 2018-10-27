import 'dart:async';

import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenBuilder();
  }
}

class SplashScreenBuilder extends State<SplashScreen> {
  BuildContext _context;

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    this._context = context;
    return DecoratedBox(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/logo.png'))));
  }

  void goToHome() {
    Navigator.of(_context).pushReplacementNamed('/login');
  }

  startTime() async {
    var duration = const Duration(seconds: 3);
    return new Timer(duration, goToHome);
  }
}
