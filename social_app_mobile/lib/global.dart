import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

saveValue(String key, String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(key, value);
}

Future<String> getValue(key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return String
  String stringValue = prefs.getString(key);
  return stringValue;
}

Future<void> showdialog(BuildContext ctx, String data) async {
  bool shouldUpdate = await showDialog(
    context: ctx,
    child: new AlertDialog(
      content: new FlatButton(
        child: new Text(data),
        onPressed: () => Navigator.pop(ctx, true),
      ),
    ),
  );
}
