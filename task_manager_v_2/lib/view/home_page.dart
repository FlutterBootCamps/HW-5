import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
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
  // Use GetIt to get the list of TaskManager instances
  List<TaskManager> get listOfTaskManager => GetIt.instance<List<TaskManager>>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: () {
            setState(() {});
          },
        ),
        actions: [
          IconButton(
            color: Colors.green.shade300,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AddTask()));
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ListView(
        children: [
          ...List.generate(listOfTaskManager.length, (index) {
            return ListTile(
              title: TextButton(
                child: Text(
                  listOfTaskManager[index].taskTitle,
                  style: TextStyle(
                    color: changeColor(listOfTaskManager[index].state),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailsOfTask(taskManager: listOfTaskManager[index]),
                    ),
                  );
                },
              ),
              leading: Checkbox(
                value: listOfTaskManager[index].state,
                onChanged: (value) {
                  setState(() {
                    listOfTaskManager[index].state = value!;
                  });
                },
              ),
            );
          })
        ],
      ),
    );
  }
}
