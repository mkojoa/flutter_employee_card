import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  Future<String> loadSharedPrefData(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    return (preferences.getString(key) != null &&
            preferences.getString(key).isNotEmpty)
        ? preferences.getString(key)
        : null;
  }

  //save info to shared preference
  Future<void> persistSharedPrefData(String key, String message) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(key, message);
  }

  Future<bool> removeSharedPrefData(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.clear();
    //return preferences.remove(key);
  }
}
