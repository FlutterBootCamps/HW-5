



import '../model/to_do_list.dart';
class TaskManagerList {
  

static List<TaskManager> listOfTaskManager = [];

static void addTaskManager(TaskManager taskManager) {
  listOfTaskManager.add(taskManager);
} //AddTaskManager

getListOfTaskManager() {
  return listOfTaskManager;
}
getTaskManagerLength() {
  return listOfTaskManager.length;
}}