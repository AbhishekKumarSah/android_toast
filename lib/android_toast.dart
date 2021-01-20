
import 'dart:async';

import 'package:flutter/services.dart';

class AndroidToast {
  static const MethodChannel _channel = const MethodChannel('android_toast');

  static showToast(String message,{String length:"0",String Gravity:"0"}){
    _channel.invokeMethod("showToast",{'message' : message,'length': length,'Gravity':Gravity});
  }

}
class ToastLength {
  static String Short = "0";
  static String Long = "1";
}

class ToastGravity{
  static String Center="17";
  static String Bottom="80";
  static String Top="48";
  static String Default="0";
}
