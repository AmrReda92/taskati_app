import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText ;
  const CustomTextFormField({super.key, required this.hintText});



  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
