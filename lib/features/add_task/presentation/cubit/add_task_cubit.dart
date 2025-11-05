import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:taskati_application/core/models/task_model.dart';
import 'package:taskati_application/features/add_task/data/repo/task_repo.dart';

part 'add_task_state.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(AddTaskInitial());

  addTask(TaskModel taskHive)async{
   emit(AddTaskLoading());
   
   final response = await TaskRepo.addTask(taskHive);
   if(response){
     emit(AddTaskSuccess());
   }else{
     emit(AddTaskError());
   }
  }
}
