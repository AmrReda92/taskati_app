



import 'package:hive_flutter/adapters.dart';
part  'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel extends HiveObject {

  @HiveField(0)
  String userImage;

  @HiveField(1)
  String userName;

  UserModel({required this.userImage , required this.userName});


}