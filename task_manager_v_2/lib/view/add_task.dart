import 'package:flutter/material.dart';
import 'package:task_manager_v_2/model/to_do_list.dart';
import '../data/list_of_task.dart';
import '../main.dart';
class AddTask extends StatefulWidget {
  AddTask({Key? key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
    List<Widget> TaskPriority= <Widget>[ Text("high"), Text("medium"), Text("low") ];
  List<bool> _selectedTaskPriority = [false, false, false];
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      width: MediaQuery.of(context).size.width * 0.9,
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.all(30),
      child: Column(
        children: [
          _buildTextField("Title", _titleController),
          _buildTextField("Description", _descriptionController),
          Text("Select Task Priority"),
          _buildToggleButtons(),
          ElevatedButton(
            onPressed: () {
              _showConfirmationDialog();
            },
            child: Text("Add Task"),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String hintText, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(borderSide: BorderSide(width: 3)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
    );
  }

  Widget _buildToggleButtons() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.height * 0.4,
      child: ToggleButtons(
        direction: Axis.horizontal,
        children: TaskPriority, // Access through the instance
        isSelected: _selectedTaskPriority,
        onPressed: (int index) {
          setState(() {
            for (int i = 0; i <3; i++) {
              _selectedTaskPriority[i] = i == index;
            }
          });
        },
      ),
    );
  }

  Future<void> _showConfirmationDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirm Task Addition"),
          content: Text("Are you sure you want to add this task?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.of(context).pop(); // Close the AddTaskScreen

              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                _addTask();
                Navigator.of(context).pop(); // Close the dialog
                Navigator.of(context).pop(); // Close the AddTaskScreen
              },
              child: Text("Add"),
            ),
          ],
        );
      },
    );
  }

  void _addTask() {  
        print(1);
  
    TaskManager taskManager = locator<TaskManager>();
    
    taskManager.taskTitle = _titleController.text;
    taskManager.taskDescription = _descriptionController.text;
    taskManager.taskPriority =TaskPriority[_selectedTaskPriority.indexOf(true)].toString();
    listOfTaskManager.add(taskManager);
  }
}
