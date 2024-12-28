import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'add_task_tile.dart';

class CreateTaskItems extends StatelessWidget {
  const CreateTaskItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Colors.black12
        )
      ),
      child: Column(
        children: [
         const AddTaskTile(subTitle: 'Project123',title: 'Project',svgImage: projectIcon),
         const  Divider(),
          const  AddTaskTile(subTitle: '123',title: 'Source',svgImage: sourceIcon),
          const Divider(), 
          const AddTaskTile(subTitle: 'Milestone',title: 'Type',svgImage: typeIcon),
          const Divider(),
          const  AddTaskTile(subTitle: 'High',subTitleColor: Colors.red,title: 'Priority',svgImage: priorityIcon),
          const Divider(),  
         AddTaskTile(subTitleStatus:  Row(
           children: [
             Container(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(3),
                                                    color: const Color(0xFF68E1FD).withOpacity(.22)
                                                  ),
                                                  child:const Text('In Progress',style: TextStyle(
                                                    color: Color(0xFF56C1DA),
                                                    fontWeight: FontWeight.w600 
                                                  ),),
                                                 ),
           ],
         ),title: 'Status',svgImage: statusIcon),
        ],
      ),
    );
  }
}

