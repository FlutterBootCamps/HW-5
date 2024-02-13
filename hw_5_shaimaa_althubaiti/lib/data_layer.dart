

import 'package:hw_5_shaimaa_althubaiti/model/sports_list.dart';
import 'package:hw_5_shaimaa_althubaiti/model/sports_model.dart';

class SportsData {
  List<SportsModel> allSports = [];

  getAll() {
    sports.map((item) {
      allSports.add(SportsModel.fromJson(item));
    });
  }
}