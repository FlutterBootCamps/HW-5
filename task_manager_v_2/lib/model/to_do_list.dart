import 'package:flutter/material.dart';

class TaskManager {
  //late is a keyword used to declare a variable as being mutable
  late String taskTitle;
  late String taskDescription;
  late DateTime taskCratedDate;
  late String taskPriority;
  late bool state;

  //The constructor is used to initialize the class with the given parameters
  TaskManager({
    required this.taskTitle,
    required this.taskDescription,
    required this.taskPriority,
  }):taskCratedDate=DateTime.now(),state=false;

Map<String, dynamic> toJson() {
    return {
      'taskTitle': taskTitle,
      'taskDescription': taskDescription,
      'taskPriority': taskPriority,
      // Add more fields if necessary
    };
  }
  toMap(){
return {
  'taskTitle': taskTitle,
  'taskDescription': taskDescription,
  'taskPriority': taskPriority,
  'taskCreatedDate': taskCratedDate,
  'state': state,
};


  }
  
}
//This enum is used to define the different priorities of the tasks
//////////////////////////////////////////////////////////////////