import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
part 'task_model.g.dart';

@HiveType(typeId: 0)
class TaskModel extends HiveObject {

  @HiveField(0)
  final String title ;
  @HiveField(1)
  final String description ;
  @HiveField(2)
  final String date ;
  @HiveField(3)
  final String startTime ;
  @HiveField(4)
  final String endTime ;
  @HiveField(5)
  final Color color;
  @HiveField(6)
  final String status;

  TaskModel({required this.color, required this.title,required this.description,required this.date, required this.startTime,
    required this.endTime, this.status="ToDo"});

}

List<TaskModel> tasks =[

  ];