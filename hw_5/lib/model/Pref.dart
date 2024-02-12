import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  static final SharedPrefsService _instance = SharedPrefsService._internal();

  factory SharedPrefsService() => _instance;

  SharedPrefsService._internal();

  final prefs = SharedPreferences.getInstance();

    Future<List<String>> getInterests() async {
    final prefs = await this.prefs;
    final savedInterests = prefs.getStringList('interests') ?? [];
    return savedInterests;
  }

  Future<void> setInterests(List<String> interests) async {
    final prefs = await this.prefs;
    prefs.setStringList('interests', interests);
  }

  Future<void> setName(String name) async {
    final prefs = await this.prefs;
    prefs.setString('name', name);
  }

  Future<void> setDateOfBirth(String dateOfBirth) async {
    final prefs = await this.prefs;
    prefs.setString('dateOfBirth', dateOfBirth);
  }

  Future<void> setFavoriteColor(String favoriteColor) async {
    final prefs = await this.prefs;
    prefs.setString('favoriteColor', favoriteColor);
  }

    Future<String?> getName() async {
    final prefs = await this.prefs;
    return prefs.getString('name');
  }

  Future<String?> getDateOfBirth() async {
    final prefs = await this.prefs;
    return prefs.getString('dateOfBirth');
  }

  Future<String?> getFavoriteColor() async {
    final prefs = await this.prefs;
    return prefs.getString('favoriteColor');
  }
}