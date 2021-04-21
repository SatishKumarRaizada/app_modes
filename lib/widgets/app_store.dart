import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class SharedPref {
  Future<bool> containsKey(String key) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    return myPrefs.containsKey(key);
  }

  Future read(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(key) ? json.decode(prefs.getString(key)) : '';
  }

  Future boolSave(key, value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  Future boolRead(key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(key) ? prefs.getBool(key) : false;
  }

  Future save(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, json.encode(value));
  }

  Future remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  Future clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
