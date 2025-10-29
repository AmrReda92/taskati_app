import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText ;
  final TextEditingController? controller;
  const CustomTextFormField({super.key, required this.hintText, this.controller});



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 30.sp,
          color: Colors.black
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color:Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ) ,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(8),
          )
      ),
    );
  }
}
