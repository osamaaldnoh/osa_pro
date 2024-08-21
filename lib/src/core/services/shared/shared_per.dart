import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  final SharedPreferences _sharedPre;

  SharedPreferencesService(this._sharedPre);

  Future setString(String key, String value) async =>
      await _sharedPre.setString(key, value);

  String? getString(String key) => _sharedPre.getString(key);

  Future setStringMap(String key, String value) async {
    await _sharedPre.setString(key, json.encode(value));
  }

  String? getStringMap(String key) {
    return _sharedPre.getString(json.decode(key));
  }

  Future setBool(String key, bool value) async =>
      await _sharedPre.setBool(key, value);

  bool? getBool(String key) => _sharedPre.getBool(key);
}
