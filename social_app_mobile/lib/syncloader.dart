import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeAsync extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeAsync> {
  String _advice = '';
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App 1'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(32.0),
            child: Column(
              children: <Widget>[
                // Text 1 - advice
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    '$_advice',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),

                // Text 2 - counter
                Text(
                  '$_counter',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),

        // Floating button
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.file_download),
          // You can disable the FAB by setting this property to null
          onPressed: isLoading ? null : _fetchPost,
        ),
      ),
    );
  }

  bool isLoading = false;
  setLoading(bool state) => setState(() => isLoading = state);

  _fetchPost() async {
    try {
      setLoading(true);
      await _fetchData();
    } finally {
      setLoading(false);
    }
  }

  _fetchData() async {
    final url = 'https://api.adviceslip.com/advice';
    final response = await http.get(url);
    dynamic body = json.decode(response.body);

    // If server returns an OK response, parse the JSON.
    if (response.statusCode == 200) {
      print(response.body);
      setState(() {
        _advice = body['slip']['advice'];
        _counter += 1;
      });
    }
    // If that response was not OK, throw an error.
    else {
      // throw Exception('Failed to load post');
      print('Failed to load post');
    }
  }
}
