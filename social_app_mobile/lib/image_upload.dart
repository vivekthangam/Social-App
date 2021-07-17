import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import 'config/config.dart';

// My IPv4 : 192.168.43.171
final String phpEndPoint = 'http://192.168.43.171/phpAPI/image.php';
final String nodeEndPoint = '$api_url/image';
// final String nodeEndPoint = 'http://192.168.0.110:8080/image';

File file;

void _choose() async {
  file = await ImagePicker.pickImage(source: ImageSource.camera);
// file = await ImagePicker.pickImage(source: ImageSource.gallery);
}

void _upload() {
  if (file == null) return;
  String base64Image = base64Encode(file.readAsBytesSync());
  String fileName = file.path.split("/").last;

  http.post(nodeEndPoint, body: {
    "image": base64Image,
    "name": fileName,
  }).then((res) {
    print(res);
  }).catchError((err) {
    print(err);
  });
}

class UploadPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: _choose,
                child: Text('Choose Image'),
              ),
              SizedBox(width: 10.0),
              RaisedButton(
                onPressed: _upload,
                child: Text('Upload Image'),
              )
            ],
          ),
          file == null ? Text('No Image Selected') : Image.file(file)
        ],
      ),
    );
  }
}
