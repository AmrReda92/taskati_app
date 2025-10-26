import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati_application/core/theme/app_color.dart';
import 'package:taskati_application/core/theme/app_style.dart';

class CustomButton extends StatelessWidget {
  final String text ; 
  const CustomButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 400.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: AppColor.customButtonColor
      ),
      child: Center(child: Text(text,textAlign: TextAlign.center,style: AppStyle.customButtonStyle,)) ,
    );
  }
}
