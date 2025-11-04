import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:taskati_application/core/models/task_model.dart';
import 'package:taskati_application/core/theme/app_style.dart';
import 'package:taskati_application/core/widget/custom_button.dart';
import 'package:taskati_application/core/widget/custom_text_form_field.dart';
import 'package:taskati_application/features/home/presentation/widget/item_color.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  var titleController = TextEditingController();
  var desController = TextEditingController();
  var dateController = TextEditingController();
  var startController = TextEditingController();
  var endController = TextEditingController();
  var colorController = TextEditingController();

  int activeColor =0;

  @override
  void dispose() {
    titleController.dispose();
    desController.dispose();
    startController.dispose();
    endController.dispose();
    dateController.dispose();
    colorController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Add Task",style: AppStyle.customButtonStyle.copyWith(color: Colors.black),),
      ),

      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 32.w),
        child: SingleChildScrollView(
          child: Column(
            spacing: 40.h,
            children: [
              SizedBox(height: 60.h,),
              CustomTextFormField(
                controller: titleController ,
                labelText: "Enter title",
              ),
              CustomTextFormField(
                controller: desController,
                labelText: "Enter description",
                maxLine: 5,
              ),
              CustomTextFormField(
                controller: dateController,
                readOnly: true,
                labelText: "Date",
                suffixIcon: Icon(Icons.date_range),
                onTap: (){
                 showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime(2030)).then((v)
                 {
                   dateController.text= DateFormat.yMMMd().format(v!);
                 }
                 );


                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child:
                  CustomTextFormField(
                    controller: startController,
                    labelText: "Start Time",
                    readOnly: true,
                    suffixIcon: Icon(Icons.watch),
                    onTap: (){
                      showTimePicker(context: context, initialTime: TimeOfDay.now()).then((v)
                      {
                        startController.text=(v!).format(context);
                      }
                      ) ;
                    },
                  )
                  ),
                  SizedBox(width: 30.w,),
                  Expanded(child:
                  CustomTextFormField(
                    controller: endController,
                    labelText: "End Time",
                    readOnly: true,
                    suffixIcon: Icon(Icons.watch),
                    onTap: (){
                      showTimePicker(context: context, initialTime: TimeOfDay.now()).then((v)
                      {
                        endController.text =(v!).format(context);
                      }
                      );
                    },
                  ),
                  )
                ],
              ),
              SizedBox(
                height: 100.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=> ItemColor(
                      color: taskColor[index],
                      isActive: index==activeColor,
                      onTap: (){
                        setState(() {
                          activeColor=index;
                        });
                      },
                    ),
                    separatorBuilder: (context,index)=>SizedBox(width: 26.w,),
                    itemCount: taskColor.length ,),
              ),
              SizedBox(height: 180.h,),
              CustomButton(
                onTap: (){
               tasks.add(TaskModel(
                   color: taskColor[activeColor] ,
                   title: titleController.text,
                   description: desController.text,
                   date: dateController.text,
                   startTime: startController.text,
                   endTime: endController.text
               )
               );
               Navigator.pop(context);

                },
                  text: "Create Task")

            ],
          ),
        ),
      )

    );
  }
}


final List <Color> taskColor =[
  Colors.red ,
  Colors.green,
  Colors.blue,
];