import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ingeniousbuilddemo/screens/add_task.dart';
import '../utils/common_functions.dart';
import '../utils/constants.dart';
import '../utils/navigation_utils.dart';
import 'common_button.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: AppColors.appDark,
      borderRadius: BorderRadius.circular(25)
    ),
    child: Padding(
      padding:  EdgeInsets.symmetric(horizontal: screenWidth(context) * .035),
      child: Row(
        
        children: [
          SvgPicture.asset(tasksIcon,fit: BoxFit.scaleDown,),
          SizedBox(
            width: screenWidth(context) * .02,
          ),
          SizedBox(width: screenWidth(context) * .15,
            child: SvgPicture.asset(logoImage,fit: BoxFit.scaleDown,colorFilter:const ColorFilter.mode(
              AppColors.appGreen, BlendMode.dstIn),)),
           const Spacer(),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
             children: [
               Text('Add Task',style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: screenWidth(context) * .045
               ),),
               SizedBox(height: screenHeight(context) * .009,),
               SizedBox(
                width: screenWidth(context) * .3,
                child:const Text('Add a task to be undertaken later',
                style: TextStyle(color: Colors.white),)),
                 SizedBox(height: screenHeight(context) * .009,),
                 GestureDetector(
                   onTap: (){
    openScreen(context,const AddTask());
  },
                   child: CommonButton(
                    height: 30,
                    width: screenWidth(context) * .3,
                    label: 'Add Task',
                    fontSize: screenWidth(context) *.035,
                   ),
                 )
             ],
           )
        ],
      ),
    ),
    );
  }
}

