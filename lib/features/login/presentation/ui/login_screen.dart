import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskati_application/core/routes/app_routs.dart';
import 'package:taskati_application/core/routes/routes.dart';
import 'package:taskati_application/core/widget/custom_button.dart';
import 'package:taskati_application/core/widget/custom_text_form_field.dart';
import 'package:taskati_application/features/login/data/models/user_model.dart';
import 'package:taskati_application/features/login/data/repo/login_repo.dart';
import 'package:taskati_application/features/login/presentation/cubit/login_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  final ImagePicker picker = ImagePicker();
   XFile? photo ;
   XFile? image ;
  openCamera()async{
    photo = await picker.pickImage(source: ImageSource.camera);
    setState(() {

    });
  }

  openGallery()async{
    photo = await picker.pickImage(source: ImageSource.gallery);
    setState(() {

    });
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Visibility(
                   visible: photo!=null,
                     child: CircleAvatar(
                         radius: 80,
                         backgroundImage:Image.file(File(photo?.path??"")).image),
                      replacement: Image.asset("assets/images/user.png",height: 300.h,width: 300.w,),),

                  SizedBox(height: 30.h,),
                  CustomButton(text: "Upload From Gallery",
                  onTap:(){
                    openGallery();
                  }
                    ),
                  SizedBox(height: 20.h,),
                  CustomButton(text: "Upload From Camera",
                  onTap: (){
                    openCamera();
                  },
                  ),
                  Divider(height: 100.h,color: Colors.grey,indent: 30.w,endIndent: 30.w,),
                  CustomTextFormField(
                    controller: nameController,
                    hintText: "Enter Your Name",

                  ),
                  SizedBox(height: 100.h,),
                  BlocListener<LoginCubit, LoginState>(
                    listener: (context, state) {
                      if( state is SaveUserSuccess){
                        Navigator.pushNamedAndRemoveUntil(context, Routes.homeScreen, (e)=>false);
                      }
                    },
                child: CustomButton(
                  onTap: (){
                    context.read<LoginCubit>().SaveUserData(UserModel(userImage: photo?.path??"",userName: nameController.text));
                  },
                    text: "Save"),
),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
