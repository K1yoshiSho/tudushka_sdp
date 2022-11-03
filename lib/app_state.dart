import 'package:shared_preferences/shared_preferences.dart';

class MyAppState {
  static final MyAppState _instance = MyAppState._internal();

  factory MyAppState() {
    return _instance;
  }

  MyAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  late SharedPreferences prefs;

  bool showList = true;
}
