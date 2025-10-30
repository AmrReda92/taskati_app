import 'package:hive/hive.dart';

import '../../../core/costant/app_string.dart';
import '../../login/data/models/user_model.dart';

class HomeRepo {

  static var box = Hive.box<UserModel>(AppString.userBox);

  static UserModel getUserData(){
    return box.get(AppString.userKey) as UserModel ;
  }

}