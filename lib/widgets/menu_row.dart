import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/common_functions.dart';
import '../utils/constants.dart';
import 'item_tile.dart';
import 'menu_select.dart';

class MenuRow extends StatelessWidget {
  const MenuRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MenuSelect(
          boxColor: AppColors.appDark,
          fadedIcon: fadedLogoIcon,
          child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight(context) * 0.013,),
                      Container(
        height: 55,
        width: 55,
        decoration:const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.appGreen
        ),
        child: SvgPicture.asset(truckIcon,fit: BoxFit.scaleDown,),
                      ),
                       SizedBox(height: screenHeight(context) * 0.05,),
                       Text('Raw Material\nAccumulation',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: screenWidth(context) * 0.04),),
                   const  ItemTile(
                      circleColor: Colors.red,
                      label: '3 Risk Items',
                      textColor: Colors.white,
                     ), 
                     const  ItemTile(
                      circleColor: AppColors.appGreen,
                      label: '3 Open RFI',
                      textColor: Colors.white,
                     ),  
                     const  ItemTile(
                      circleColor: Colors.yellow,
                      label: '0 Punch List',
                      textColor: Colors.white,
                     ),
                    ],
                  ),
                ),
        ),    
         MenuSelect(
          boxColor: AppColors.appGreen,
          fadedIcon: fadedLogoTwoIcon,
          child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight(context) * 0.013,),
                      Container(
        height: 55,
        width: 55,
        decoration:const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.appDark
        ),
        child: SvgPicture.asset(presentationBoardIcon,fit: BoxFit.scaleDown,),
                      ),
                       SizedBox(height: screenHeight(context) * 0.05,),
                       Text('Design',style: TextStyle(color: AppColors.appDark,fontWeight: FontWeight.w700,fontSize: screenWidth(context) * 0.04),),
                   const  ItemTile(
                      circleColor: Colors.red,
                      label: 'Sketching',
                      textColor: AppColors.appDark,
                     ), 
                     const  ItemTile(
                      circleColor: Color(0xFF33D939),
                      label: 'Rendering',
                      textColor: AppColors.appDark,
                     ),  
                     const  ItemTile(
                      circleColor: Colors.yellow,
                      label: 'Final Blueprint',
                      textColor: AppColors.appDark,
                     ),
                    ],
                  ),
                ),
        ),
      ],
    );
  }
}

