import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:taskati_application/core/costant/app_images.dart';
import 'package:taskati_application/core/models/task_model.dart';
import 'package:taskati_application/core/routes/routes.dart';
import 'package:taskati_application/core/theme/app_style.dart';
import 'package:taskati_application/core/theme/cubit/theme_cubit.dart';
import 'package:taskati_application/core/widget/custom_button.dart';
import 'package:taskati_application/features/add_task/data/repo/task_repo.dart';
import 'package:taskati_application/features/home/data/home_repo.dart';
import 'package:taskati_application/features/home/presentation/widget/task_item.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    TaskRepo.getTasks();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hello ${HomeRepo.getUserData().userName}",style: AppStyle.customButtonStyle.copyWith(color: Colors.blue),),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: Image.file(File(HomeRepo.getUserData().userImage)).image,
                  ),
                  Switch(value: context.read<ThemeCubit>().appTheme==ThemeData.dark(), onChanged: (v)
                  {
                    context.read<ThemeCubit>().changeTheme();
                  }
                  )
                ],
              ),
              SizedBox(height: 50.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(DateFormat("EEEE, dd MMMM yyyy").format(DateTime.now()),
                      style: AppStyle.font36.copyWith(color: Colors.black) ,
                    maxLines: 2,),
                  ),
                  SizedBox(
                     width: 330.w,
                      child: CustomButton(text: "+ Add Task",
                         onTap: ()async{
                       await  Navigator.pushNamed(context, Routes.addTaskScreen);
                       setState(() {

                       });

                      },))

                ],
              ),
              SizedBox(height: 90.h,),
              Visibility(
                visible: tasks.isNotEmpty,
                  child: Expanded(
                    child: ListView.separated(
                        itemBuilder: (context,index)=>TaskItem(task: tasks[index],),
                        separatorBuilder: (context,index)=>SizedBox(height: 20.h,),
                        itemCount: tasks.length),
                  ),
              replacement: Lottie.asset(AppImages.noTask),
              )



            ],
          ),
        ),
      ),
    );
  }
}
