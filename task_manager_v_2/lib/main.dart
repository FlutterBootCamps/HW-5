import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:task_manager_v_2/model/to_do_list.dart';

import 'data/list_of_task.dart';
import 'view/home_page.dart';
GetIt locator = GetIt.instance;

void main() {

GetIt locator = GetIt.instance;

// Register TaskManager as a lazy singleton
locator.registerLazySingleton<TaskManager>(() => TaskManager(taskDescription: "task1",taskPriority: "low",taskTitle: "task1"));

List<TaskManager> listOfTaskManager = [];

TaskManager taskManager = locator<TaskManager>();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
