import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:task_manager_v_2/data/list_of_task.dart';
import '../main.dart';
import '../methods/change_color.dart';
import '../model/to_do_list.dart';
import 'add_task.dart';
import 'details_of_task.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
get listOfTaskManager => TaskManagerList.listOfTaskManager;

@override
void initState() {
    super.initState();
    if (prefs?.getStringList("names") == null){

    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildTaskList(),
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
        setState(() {});
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
      children: List.generate(locator<TaskManagerList>().getTaskManagerLength(), (index) {
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
        TaskManagerList.listOfTaskManager[index].taskTitle,
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
        setState(() {
          listOfTaskManager[index].state = value!;
        });
      },
    );
  }
}
