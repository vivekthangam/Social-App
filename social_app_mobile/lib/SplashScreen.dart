import 'dart:async';

import 'package:flutter/material.dart';

import 'SignIn_page.dart';
import 'TestWidgetsList.dart';
import 'utils/PreferencesHelper.dart';

void main() => runApp(ApplicationInit());

class ApplicationInit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Widget page = SignInPage();
  getSharedPrefs() async {
    String user = await PreferencesHelper.getString('user');

    if (user != null && user != '') {
      print(user);
      this.page = MyApp();
    }
  }

  @override
  void initState() {
    super.initState();
    getSharedPrefs();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => this.page));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logoBMW.png', height: 120),
            SizedBox(height: 20),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            )
          ],
        )));
  }
}
