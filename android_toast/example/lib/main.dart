import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:android_toast/android_toast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();

  }
  int count=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RaisedButton(
            child: Text('Toast'),
            onPressed: (){
              count++;
              AndroidToast.showToast('Abhishek $count',length: ToastLength.Short,gravity: ToastGravity.Gravity_Default);
            },
          ),
        ),
      ),
    );
  }
}
