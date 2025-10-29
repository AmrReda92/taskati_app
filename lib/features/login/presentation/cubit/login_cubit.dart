import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:taskati_application/features/login/data/models/user_model.dart';
import 'package:taskati_application/features/login/data/repo/login_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  SaveUserData(UserModel user)async{
    emit(SaveUserLoading());

    final response= await LoginRepo.saveUsedData(user);

    if(response){
      emit(SaveUserSuccess());
    }else{
      emit(SaveUserError());
    }
  }
}
