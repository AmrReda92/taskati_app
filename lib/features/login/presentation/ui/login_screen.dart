import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati_application/core/widget/custom_button.dart';
import 'package:taskati_application/core/widget/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                 Image.asset("assets/images/user.png",height: 300.h,width: 300.w,),
                  SizedBox(height: 30.h,),
                  CustomButton(text: "Upload From Gallery"),
                  SizedBox(height: 20.h,),
                  CustomButton(text: "Upload From Camera"),
                  Divider(height: 100.h,color: Colors.grey,indent: 30.w,endIndent: 30.w,),
                  CustomTextFormField(hintText: "Enter Your Name")

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
