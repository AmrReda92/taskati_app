import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati_application/core/costant/app_string.dart';
import 'package:taskati_application/core/theme/app_style.dart';
import 'package:taskati_application/core/theme/cubit/theme_cubit.dart';
import 'package:taskati_application/features/home/data/home_repo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
