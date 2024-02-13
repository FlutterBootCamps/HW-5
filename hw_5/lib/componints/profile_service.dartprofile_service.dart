import 'package:shared_preferences/shared_preferences.dart';

Future<List<String>> getProfileInfo() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getStringList('profiles') ?? [];
}
