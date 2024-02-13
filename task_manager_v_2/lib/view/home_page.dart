import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task_manager_v_2/data/list_of_task.dart';
import '../main.dart';
import '../methods/change_color.dart';
import 'add_task.dart';
import 'details_of_task.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
get listOfTaskManager => TaskManagerSharedPreferences.getTaskManagers();

@override
void initState() {
    super.initState();
    if (prefs?.getStringList("taskTitle") == null){

    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body:buildTaskList(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: buildRefreshButton(),
      actions: [
        buildAddButton(),
      ],
    );
  }

  IconButton buildRefreshButton() {
    return IconButton(
      icon: const Icon(Icons.refresh),
      onPressed: () {
        setState(() { });
      },
    );
  }

  IconButton buildAddButton() {
    return IconButton(
      color: Colors.green.shade300,
      onPressed: () {
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => AddTask()));
      },
      icon: const Icon(Icons.add),
    );
  }

  Widget buildTaskList() {
    return ListView(
      children: List.generate(TaskManagerSharedPreferences.getTaskManagers().length, (index) {
        return buildTaskListItem(index);
      }),
    );
  }

  ListTile buildTaskListItem(int index) {
    return ListTile(
      title: buildTaskTextButton(index),
      leading: buildTaskCheckbox(index),
    );
  }

  TextButton buildTaskTextButton(int index) {
    return TextButton(
      child: Text(
        TaskManagerSharedPreferences.getTaskManagers()[index].taskTitle,
        style: TextStyle(
          color: changeColor(listOfTaskManager[index].state),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsOfTask(taskManager: listOfTaskManager[index]),
          ),
        );
      },
    );
  }

Checkbox buildTaskCheckbox(int index) {
  return Checkbox(
    value: listOfTaskManager[index].state,
    onChanged: (value) {
      // Ensure that this function is being called
      setState(() {
        // Update the state of the TaskManager object at the given index
        listOfTaskManager[index].state = value!;
        // Save the updated TaskManager object to SharedPreferences
        TaskManagerSharedPreferences.saveTaskManagers(listOfTaskManager);
        // Print statements for debugging
        print("Updated checkbox value: ${listOfTaskManager[index].state}");
      });
    },
  );
}



}
