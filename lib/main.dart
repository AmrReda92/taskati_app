

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:taskati_application/features/login/data/models/user_model.dart';
import 'package:taskati_application/taskati_app.dart';

void main ()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserModelAdapter());
  runApp(TaskatiApp());
}