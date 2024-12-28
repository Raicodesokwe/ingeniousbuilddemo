import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:ingeniousbuilddemo/models/task_model.dart';
import '../utils/constants.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
                                       children: List.generate(taskList.length, (index) => AnimationConfiguration.staggeredList(
                                         position: index,
           duration: const Duration(seconds: 1),
                                         child: SlideAnimation(
                                           verticalOffset: 50.0,
                                           child: Padding(
                                             padding: const EdgeInsets.symmetric(vertical: 8),
                                             child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(30),
                                                border: Border.all(
                                                  color: Colors.black12
                                                )
                                              ),
                                               child: ListTile(
                                               shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(30)
                                               ),
                                               leading: Container(
                                                     height: 40,
                                                     width: 40,
                                                     decoration:const BoxDecoration(
                                                       shape: BoxShape.circle,
                                                       color: AppColors.appDark
                                                     ),
                                                     child: SvgPicture.asset(taskIcon,fit: BoxFit.scaleDown,),
                                                    ),
                                                 title: Text('${taskList[index].category}-${taskList[index].label}',style:const TextStyle(
                                                  fontSize: 13
                                                 ),),  
                                                 subtitle: Row(
                                                   children: [
                                                     Container(
                                                      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(3),
                                                        color: taskList[index].statusBoxColor
                                                      ),
                                                      child: Text(taskList[index].status,style: TextStyle(
                                                        color:taskList[index].statusColor,
                                                        fontWeight: FontWeight.w600 
                                                      ),),
                                                     ),
                                                   ],
                                                 ), 
                                                 trailing: const Icon(Icons.keyboard_arrow_right,color: AppColors.appDark,),
                                                                                          
                                               ),
                                             ),
                                           ),
                                         ),
                                       )),       );
  }
}

