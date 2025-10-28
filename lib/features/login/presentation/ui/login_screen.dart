import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskati_application/core/widget/custom_button.dart';
import 'package:taskati_application/core/widget/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  CustomTextFormField(hintText: "Enter Your Name"),
                  SizedBox(height: 100.h,),
                  CustomButton(text: "Save"),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
