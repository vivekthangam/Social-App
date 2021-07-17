import 'package:chat_app/test/calender/calender.dart';
import 'package:chat_app/test/local_notification_working.dart';
import 'package:flutter/material.dart';

import 'SignIn_page.dart';
import 'SignUp_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Basic List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('SignUp'),
              onTap: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SignUpPage()))
              },
            ),
            ListTile(
                leading: Icon(Icons.photo_album),
                title: Text('SignIN'),
                onTap: () => {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SignInPage()))
                    }),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text('Notification'),
                onTap: () => {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Notification_Screen()))
                    }),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text('Calender'),
                onTap: () => {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Calender_screen()))
                    }),
          ],
        ),
      ),
    );
  }
}
