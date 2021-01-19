
import 'dart:async';

import 'package:flutter/services.dart';

class AndroidToast {
  static const MethodChannel _channel =
      const MethodChannel('android_toast');

  static showToast(String message,{String length: '0',String gravity:'0'}){
    _channel.invokeListMethod('showToast',{'message':message,'length':length,'gravity':gravity});
  }
}
class ToastLength{
  static final String Long='1';
  static final String Short='0';

}

class ToastGravity{
  static final String Gravity_Center='17';
  static final String Gravity_Bottom='80';
  static final String Gravity_Top='48';
  static final String Gravity_Default='0';
}
