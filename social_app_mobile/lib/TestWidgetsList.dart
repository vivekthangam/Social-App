import 'package:Social/SignIn_page.dart';
import 'package:Social/chat.dart';
import 'package:Social/profile.dart';
import 'package:Social/syncloader.dart';
import 'package:Social/test/calender/calender.dart';
import 'package:Social/test/local_notification_working.dart';
import 'package:flutter/material.dart';

import 'SignUp_screen.dart';
import 'image_upload.dart';
import 'lazyLoading.dart';

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
