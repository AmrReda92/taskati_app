import 'dart:ui';

import 'package:flutter/material.dart';

class TaskModel{

  final String title ;
  final String description ;
  final String date ;
  final String startTime ;
  final String endTime ;
  final Color color;
  final String status;

  TaskModel({required this.color, required this.title,required this.description,required this.date, required this.startTime,
    required this.endTime, this.status="ToDo"});

}

List<TaskModel> tasks =[

  ];