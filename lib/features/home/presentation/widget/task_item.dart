import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati_application/core/models/task_model.dart';

import '../../../../core/theme/app_style.dart';

class TaskItem extends StatelessWidget {
  final TaskModel? task ;
  const TaskItem({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(40.h.w),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(task?.color??0,),
          borderRadius: BorderRadius.circular(16)
      ),child:
    Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20.h,
            children: [
              Text(task?.title??"task title",style: AppStyle.customButtonStyle,),
              Text( "${task?.startTime} ${task?.endTime}" ,style: AppStyle.font26.copyWith(color: Colors.yellow)),
              Text(task?.description??" ",style: AppStyle.customButtonStyle,)
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
            child: Text(task?.status??"",style:  AppStyle.customButtonStyle,)
        )
      
      ],
          ),
    );
  }
}
