import 'package:chat_app/SignIn_page.dart';
import 'package:chat_app/chat.dart';
import 'package:chat_app/profile.dart';
import 'package:chat_app/syncloader.dart';
import 'package:chat_app/test/calender/calender.dart';
import 'package:chat_app/test/local_notification_working.dart';
import 'package:chat_app/todo.dart';
import 'package:flutter/material.dart';

import 'SignUp_screen.dart';
import 'async_loader.dart';
import 'google.dart';
import 'image_upload.dart';
import 'lazyLoading.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Some App',
      home: SomeApp(),
    );
  }
}

class SomeApp extends StatelessWidget {
  Widget getListView(BuildContext context) {
    var listView = ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text("SignIn ", textDirection: TextDirection.ltr),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignInPage(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text("SignUp ", textDirection: TextDirection.ltr),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignUpPage(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text("Calender", textDirection: TextDirection.ltr),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Calender_screen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text("chat", textDirection: TextDirection.ltr),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => chat_screen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text("Notification ", textDirection: TextDirection.ltr),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Notification_Screen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text("Profile ", textDirection: TextDirection.ltr),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text("LazyLoading ", textDirection: TextDirection.ltr),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LazyLoading(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text("Calender", textDirection: TextDirection.ltr),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UploadPage(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text("ExampleApp", textDirection: TextDirection.ltr),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeAsync(),
              ),
            );
          },
        ),
      ],
    );
    return listView;
  }

  @override
  Widget build(BuildContext context) {
    final title = 'Basic List';
    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: Scaffold(body: getListView(context))));
  }
}
