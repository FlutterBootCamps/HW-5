import 'package:flutter/material.dart';
import 'package:task_manager_v_2/model/to_do_list.dart';

class DetailsOfTask extends StatefulWidget {
   DetailsOfTask({super.key, required this.taskManager});
     final TaskManager taskManager;


  @override
  State<DetailsOfTask> createState() => _DetailsOfTaskState();
}

class _DetailsOfTaskState extends State<DetailsOfTask> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Task Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
body: Center(
  child: Container(height: MediaQuery.of(context).size.height*0.7,
  width: MediaQuery.of(context).size.width*0.9,decoration:BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.white,
    boxShadow
    : [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
  child: Column(children: [
Text("title of the task : ${widget.taskManager.taskTitle}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
Text("task Description of the task : ${widget.taskManager.taskDescription}",style: TextStyle(fontSize: 15)),
Text("Task Priority of the task : ${widget.taskManager.taskPriority}",style: TextStyle(fontSize: 15)),
Text("task Crated Date of the task : ${widget.taskManager.taskCratedDate}",style: TextStyle(fontSize: 15)),
Text("the task is complete : ${widget.taskManager.state}",style: TextStyle(fontSize: 15)),






  ]),),
)




    );
  }
}