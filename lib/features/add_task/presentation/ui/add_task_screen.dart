import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati_application/core/theme/app_style.dart';
import 'package:taskati_application/core/widget/custom_text_form_field.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Add Task",style: AppStyle.customButtonStyle.copyWith(color: Colors.black),),
      ),

      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 32.w),
        child: Column(
          spacing: 40.h,
          children: [
            SizedBox(height: 60.h,),
            CustomTextFormField(
              labelText: "Enter title",
            ),
            CustomTextFormField(
              labelText: "Enter description",
              maxLine: 5,
            ),
            CustomTextFormField(
              readOnly: true,
              labelText: "Date",
              suffixIcon: Icon(Icons.date_range),
              onTap: (){
               showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime(2030));
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: 
                CustomTextFormField(
                  labelText: "Start Time",
                  readOnly: true,
                  suffixIcon: Icon(Icons.watch),
                  onTap: (){
                    showTimePicker(context: context, initialTime: TimeOfDay.now()) ;
                  },
                )
                ),
                SizedBox(width: 30.w,),
                Expanded(child:
                CustomTextFormField(
                  labelText: "End Time",
                  readOnly: true,
                  suffixIcon: Icon(Icons.watch),
                  onTap: (){
                    showTimePicker(context: context, initialTime: TimeOfDay.now());
                  },
                ),
                )
              ],
            ),
          ],
        ),
      )

    );
  }
}
