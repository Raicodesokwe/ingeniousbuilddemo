import 'package:flutter/material.dart';
import 'package:ingeniousbuilddemo/utils/constants.dart';

class TaskModel{
  final String category;
  final String label;
  final String status;
  final Color statusColor;
  final Color statusBoxColor;

  TaskModel({required this.category,required this.label,required this.status, required this.statusColor,required this.statusBoxColor });
}
List<TaskModel> taskList=[
  TaskModel(category: 'GENERAL',
  label: 'Ocean Central Clean-up',status: 'In Progress',
   statusColor: const Color(0xFF56C1DA),
   statusBoxColor:const Color(0xFF68E1FD).withOpacity(.22)
   ),
    TaskModel(category: 'EVENT',
  label: 'Testing',status: 'Completed',
   statusColor: AppColors.appGreen,
   statusBoxColor:const Color(0xFF8EFB92).withOpacity(.22)
   ),  
 TaskModel(category: 'EVENT',
  label: 'Order Supplies',status: 'Completed',
   statusColor: AppColors.appGreen,
   statusBoxColor:const Color(0xFF8EFB92).withOpacity(.22)
   ),
];