import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorageService {
  static late SharedPreferences preferences;


  static Future<bool> setList(String key, List<String> value) async {
     return await preferences.setStringList(key, value);
  }


  static List<String>? getList(String key)  {
    return preferences.getStringList(key);
  }
}

