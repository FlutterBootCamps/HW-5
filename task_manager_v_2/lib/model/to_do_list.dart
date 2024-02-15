
class TaskManager {
  //late is a keyword used to declare a variable as being mutable
  late String taskTitle;
  late String taskDescription;
  late String taskCratedDate;
  late String taskPriority;
  late bool state;

  //The constructor is used to initialize the class with the given parameters
  TaskManager({
    required this.taskTitle,
    required this.taskDescription,
    required this.taskPriority, required String taskCratedDate, required bool state,
  }):taskCratedDate=DateTime.now().toString(),state=false;
  Map<String, dynamic> toJson() {
    // Convert TaskManager object to JSON
    // Implement this method based on your TaskManager class structure
    return {
      'taskTitle': taskTitle,
      'taskDescription': taskDescription,
      'taskCratedDate': taskCratedDate.toString(),
      'taskPriority': taskPriority,
      'state': state,
    };
  }


  

  factory TaskManager.fromJson(Map<String, dynamic> json) {
    // Create TaskManager object from JSON
    // Implement this method based on your TaskManager class structure
    return TaskManager(
      taskTitle: json['taskTitle'],
      taskDescription: json['taskDescription'],
      taskPriority: json['taskPriority'],
      taskCratedDate: json['taskCratedDate'],
      state: json['state'],
    );
  }



  }
  
