import 'package:flutter/material.dart';
import 'package:ingeniousbuilddemo/utils/constants.dart';
import 'package:ingeniousbuilddemo/utils/navigation_utils.dart';
import 'package:ingeniousbuilddemo/widgets/common_button.dart';
import 'package:ingeniousbuilddemo/widgets/selection_filter.dart';

import '../utils/common_functions.dart';
import '../widgets/create_task_items.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> with TickerProviderStateMixin{
    
    late AnimationController _slideController;
late Animation<Offset> _offsetAnimation;
final Duration animDuration = const Duration(milliseconds: 250);
@override
  void initState() {
      _slideController =
      AnimationController(duration: const Duration(seconds: 1), vsync: this)
        ..forward();

  // Configure the SlideTransition animation
  _offsetAnimation = Tween<Offset>(begin: const Offset(0.0, 0.5), end: Offset.zero)
      .animate(CurvedAnimation(
        parent: _slideController,
        curve: Curves.easeIn,
      ));
    super.initState();
  }
  @override
  void dispose() {
   _slideController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SlideTransition(
         position: _offsetAnimation,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: screenHeight(context) * 0.03,),
                 Row(
                   children: [
                      GestureDetector(
                        onTap: (){
                          navigationPop(context);
                        },
                        child:const Icon(Icons.keyboard_arrow_left,size: 35,)),
                     const Spacer(),
                    const  Text('Add Task',style: TextStyle(
                        fontFamily: clashDisplay,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),),
                     const Spacer(),
                    const  SizedBox(width: 35,)
                   ],
                 ),
                   SizedBox(height: screenHeight(context) * 0.015,),
                  const SelectionFilter(),
                  SizedBox(height: screenHeight(context) * 0.02,),
                 const CreateTaskItems()
            
                ],
              ),
            ),
           const Padding(
              padding:  EdgeInsets.only(bottom: 25),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CommonButton(
                  label: 'Save Task',
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

