
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemColor extends StatelessWidget {
  final Color color ;
  final void Function()? onTap ;
  final bool isActive;
  const ItemColor({super.key,required this.color, this.isActive =false, this.onTap});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
          radius: 60.r,
          backgroundColor: color,
          child: Center(child: isActive? Icon(Icons.check,size: 60.r,color: Colors.white,):null),
        ),
    );
  }
}
