import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';
import '../model/to_do_list.dart';

class TaskManagerSharedPreferences {
  static const String key = 'task_managers';


  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static List<TaskManager> getTaskManagers() {
    final String? storedData = prefs?.getString(key);
    if (storedData != null) {
      final List<dynamic> taskManagerJsonList = json.decode(storedData);
      return taskManagerJsonList
          .map((json) => TaskManager.fromJson(json))
          .toList();
    } else {
      return [];
    }
  }

  static void addTaskManager(TaskManager taskManager) {
    final List<TaskManager> listOfTaskManager = getTaskManagers();
    listOfTaskManager.add(taskManager);
    saveTaskManagers(listOfTaskManager);
  }

  static void saveTaskManagers(List<TaskManager> taskManagers) {
    final List<dynamic> taskManagerJsonList =
        taskManagers.map((taskManager) => taskManager.toJson()).toList();
    final String taskManagerJsonString = json.encode(taskManagerJsonList);
    prefs?.setString(key, taskManagerJsonString);
  }

  static void updateTaskManager(listOfTaskManager) {

    saveTaskManagers(listOfTaskManager);


  }
}
