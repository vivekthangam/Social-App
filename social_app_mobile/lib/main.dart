import 'package:Social/pages/Chat/chat.dart';
import 'package:Social/pages/Chat/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'pages/Chat/ChatConstant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
