import 'package:hive_flutter/adapters.dart';
import 'package:taskati_application/core/costant/app_string.dart';
import 'package:taskati_application/core/models/task_model.dart';

class TaskRepo {

  // call the box i opened
 static var box = Hive.box<TaskModel>(AppString.taskBox);

  // add task which user did in the box
  // receive this task in taskHive

 static addTask (TaskModel taskHive) async{
   try{
     await box.add(taskHive);
     return true;
   }catch(error){
     return false;
   }
  }

  static removeTask(int index)async{
    await box.deleteAt(index);
  }

  // store tasks in local storage (task hive) to get them back in home screen
 static getTasks () {
   tasks=box.values.toList();
  }




}