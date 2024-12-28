import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/common_functions.dart';

class MenuSelect extends StatelessWidget {
  final Color boxColor;
  final String fadedIcon;
  final Widget child;
  const MenuSelect({
    super.key,
    required this.boxColor,
    required this.fadedIcon,
    required this.child,

  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenHeight(context)*0.3,
          width: screenWidth(context) * 0.43,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: boxColor
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.05),
            child: SvgPicture.asset(fadedIcon,
                                             
            // colorFilter: ColorFilter.mode(
            //     AppColors.appGreen.withOpacity(0.12), 
            //     BlendMode.srcIn,
            //   ),
              ),
          ),
        ),
        child
        
      ],
    );
  }
}

