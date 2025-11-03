import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/app_style.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(40.h.w),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16)
      ),child:
    Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20.h,
            children: [
              Text("Task title-1",style: AppStyle.customButtonStyle,),
              Text(DateFormat("dd MMMM yyyy").format(DateTime.now()),style: AppStyle.font26.copyWith(color: Colors.yellow)),
              Text("I will do this task",style: AppStyle.customButtonStyle,)
            ],
          ),
        ),
        Container(
          width: 4.w,
          height: 120.h,
          color: Colors.white,
        ),
        RotatedBox(
            quarterTurns: 1,
            child: Text("ToDo",style:  AppStyle.customButtonStyle,)
        )
      
      ],
          ),
    );
  }
}
