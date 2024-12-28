
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ingeniousbuilddemo/screens/home_screen.dart';
import 'package:ingeniousbuilddemo/utils/common_functions.dart';
import '../utils/constants.dart';
import '../utils/navigation_utils.dart';
import '../widgets/common_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appDark,
        body: Stack(
          children: [
               Positioned(
              top: 0,
              right: 0,
              child: Image.asset(blurryImage),
            ),
            Positioned(
              left: screenWidth(context) * .1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: screenHeight(context) * .05,),
                  SvgPicture.asset(logoImage),
                   SizedBox(height: screenHeight(context) * .03,),
                   Text('Ingenious.build',style: TextStyle(fontFamily: clashDisplay,
                   fontWeight: FontWeight.bold,
                   fontSize: screenWidth(context) * .08,color: AppColors.appGreen),),
                   SizedBox(height: screenHeight(context) * 0.025,),
                          const Text('#BeINGENIOUS',style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              shadows: [
                 Shadow(color: AppColors.appGreen, blurRadius: 23),
              ]
                           ),),
                             SizedBox(height: screenHeight(context) * .03,),
                   SizedBox(
                    width: screenWidth(context) * .8,
                     child:const Center(
                       child:  Text('One platform to collaborate with ALL project team members from start to completion',style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                        ),),
                     ),
                   ),
                       SizedBox(height: screenHeight(context) * .3,),
                       GestureDetector(
  onTap: (){
    openScreen(context,const HomeScreen());
  },
  child:const CommonButton(),
)
                ],
              ),
            )
          ],
        ),
      ));
  }
}