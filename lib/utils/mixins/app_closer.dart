import 'dart:io';
import 'package:flutter/services.dart';

mixin AppCloser {
  void closeApp() {
    if (Platform.isIOS) {
      try {
        exit(0);
      } catch (e) {
        SystemNavigator.pop();
      }
    } else {
      try {
        SystemNavigator.pop();
      } catch (e) {
        exit(0);
      }
    }
  }
}
