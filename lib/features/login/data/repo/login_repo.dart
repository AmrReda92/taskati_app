import 'package:hive/hive.dart';
import 'package:taskati_application/core/costant/app_string.dart';
import 'package:taskati_application/features/login/data/models/user_model.dart';

class LoginRepo {

 static var box = Hive.box<UserModel>(AppString.userBox);

 static saveUsedData(UserModel user)async{
    try{
     await box.put(AppString.userKey, user);
      return true;
    }
    catch(e){
      return false;
    }
  }


}