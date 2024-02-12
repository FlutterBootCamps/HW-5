

import 'package:get_it/get_it.dart';
import 'package:hw_5/data_layer/person_data_layer.dart';

final locator = GetIt.instance;

void setupGetIt(){
  locator.registerSingleton<PersonData>(PersonData());
}