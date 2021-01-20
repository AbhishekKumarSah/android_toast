import 'package:flutter/material.dart';

import 'package:android_toast/android_toast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count=0;

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Android Toast Plugin'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("Show Toast"),
            onPressed: (){
              count++;
              AndroidToast.showToast("My Toast  $count");
                              // or
             // AndroidToast.showToast("My Toast  $count",length: ToastLength.Long);

                          //or

             // AndroidToast.showToast("My Toast  $count",length: ToastLength.Long,Gravity: ToastGravity.Center);
            },
          ),
        ),
      ),
    );
  }
}
