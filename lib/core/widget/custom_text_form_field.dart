import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText ;
  final int maxLine ;
  final bool readOnly ;
  final Widget? suffixIcon;
   final void Function()? onTap;
  final TextEditingController? controller;

  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.controller,
    this.maxLine=1,
    this.readOnly=false,
    this.suffixIcon,
    this.onTap,
  });



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap ,
      readOnly: readOnly ,
      maxLines: maxLine,
      onTapOutside: (v){
        FocusScope.of(context).unfocus();
      },
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        alignLabelWithHint: true,
        labelText: labelText,
        hintStyle: TextStyle(
          fontSize: 30.sp,
          color: Colors.black

        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color:Colors.green),
          borderRadius: BorderRadius.circular(8),
        ) ,
      ),
    );
  }
}
