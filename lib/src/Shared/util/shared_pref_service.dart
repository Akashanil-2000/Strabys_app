import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  static SharedPreferences? _sharedPrefs;

  static Future<SharedPreferences?>  init() async {
    _sharedPrefs ??= await SharedPreferences.getInstance();
    return _sharedPrefs;
  }

  static setString({required String key, required String value}) async => await _sharedPrefs?.setString(key, value);

  static String? getString({required String key}) => _sharedPrefs?.getString(key);

  static setInt({required String key, required int value}) async => await
      _sharedPrefs?.setInt(key, value);

  static setDouble({required String key, required double value}) async => await
      _sharedPrefs?.setDouble(key, value);

  static int? getInt({required String key}) => _sharedPrefs?.getInt(key);

  static double? getDouble({required String key}) => _sharedPrefs?.getDouble(key);

  static setBool({required String key, required bool value}) async => await
      _sharedPrefs?.setBool(key, value);

  static bool? getBool({required String key}) => _sharedPrefs?.getBool(key);
  static getAll() => _sharedPrefs?.getKeys();

  static removeKey({required String key})=>_sharedPrefs?.remove(key);
}
