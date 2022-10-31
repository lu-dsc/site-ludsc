import 'package:shared_preferences/shared_preferences.dart';
import 'package:site_ludsc/constants.dart';

class SPAdapter {
  SharedPreferences? _pref;

  final int _spVersion = 1;

  final String version = 'version';
  final String lightTheme = 'light_theme';

  Future open() async {
    if (_pref == null) {
      _pref = await SharedPreferences.getInstance();
      if (getInt(key: version) == null) {
        await setInt(key: version, value: _spVersion);
        await setBool(key: lightTheme, value: kInitSettingsLightTheme);
      }
    }
  }

  Future<void> clear() async {
    await _pref?.clear();
  }

  Future<void> reload() async {
    await _pref?.reload();
  }

  int? getInt({required String key}) {
    return _pref?.getInt(key);
  }

  Future<void> setInt({required String key, required int value}) async {
    await _pref?.setInt(key, value);
  }

  double? getDouble({required String key}) {
    return _pref?.getDouble(key);
  }

  Future<void> setDouble({required String key, required double value}) async {
    await _pref?.setDouble(key, value);
  }

  bool? getBool({required String key}) {
    return _pref?.getBool(key);
  }

  Future<void> setBool({required String key, required bool value}) async {
    await _pref?.setBool(key, value);
  }
}
