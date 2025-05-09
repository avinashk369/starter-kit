import 'package:shared_preferences/shared_preferences.dart';
import 'package:synchronized/synchronized.dart';
import 'dart:async';

class PreferenceUtils {
  static PreferenceUtils? _singleton;
  static SharedPreferences? _prefs;
  static final Lock _lock = Lock();
  static Future<PreferenceUtils> getInstance() async {
    if (_singleton == null) {
      await _lock.synchronized(() async {
        if (_singleton == null) {
          // keep local instance till it is fully initialized.
          var singleton = PreferenceUtils._();
          await singleton._init();
          _singleton = singleton;
        }
      });
    }
    return _singleton!;
  }

  PreferenceUtils._();
  Future _init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // get string
  static String getString(String key, {String defValue = ''}) {
    if (_prefs == null) return defValue;
    return _prefs!.getString(key) ?? defValue;
  }

  // put string
  static Future<bool>? putString(String key, String value) {
    if (_prefs == null) return null;
    return _prefs!.setString(key, value);
  }

  // get bool
  static bool getBool(String key, {bool defValue = false}) {
    if (_prefs == null) return defValue;
    return _prefs!.getBool(key) ?? defValue;
  }

  // put bool
  static Future<bool>? putBool(String key, bool value) {
    if (_prefs == null) return null;
    return _prefs!.setBool(key, value);
  }

  // get int
  static int getInt(String key, {int defValue = -1}) {
    if (_prefs == null) return defValue;
    return _prefs!.getInt(key) ?? defValue;
  }

  // put int.
  static Future<bool>? putInt(String key, int value) {
    if (_prefs == null) return null;
    return _prefs!.setInt(key, value);
  }

  // get double
  static double getDouble(String key, {double defValue = 0.0}) {
    if (_prefs == null) return defValue;
    return _prefs!.getDouble(key) ?? defValue;
  }

  // put double
  static Future<bool>? putDouble(String key, double value) {
    if (_prefs == null) return null;
    return _prefs!.setDouble(key, value);
  }

  // get string list
  static List<String> getStringList(String key,
      {List<String> defValue = const []}) {
    if (_prefs == null) return defValue;
    return _prefs!.getStringList(key) ?? defValue;
  }

  // put string list
  static Future<bool>? putStringList(String key, List<String> value) {
    if (_prefs == null) return null;
    return _prefs!.setStringList(key, value);
  }

  // get dynamic
  static dynamic getDynamic(String key, {required Object defValue}) {
    if (_prefs == null) return defValue;
    return _prefs!.get(key) ?? defValue;
  }

  // have key
  static bool? haveKey(String key) {
    if (_prefs == null) return null;
    return _prefs!.getKeys().contains(key);
  }

  // get keys
  static Set<String>? getKeys() {
    if (_prefs == null) return null;
    return _prefs!.getKeys();
  }

  // remove
  static Future<bool>? remove(String key) {
    return _prefs!.remove(key);
  }

  // clear
  static Future<bool>? clear() {
    return _prefs!.clear();
  }

  //Sp is initialized
  static bool isInitialized() {
    return _prefs != null;
  }
}
