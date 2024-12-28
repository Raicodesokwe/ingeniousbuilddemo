import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constants.dart';
class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(menuIcon),
       const Text('Dashboard',style: TextStyle(
          fontFamily: clashDisplay,
          fontWeight: FontWeight.w600,
          fontSize: 20
        ),),
        Container(
             height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.black45,
                                      width: 3
                                    ),
                                    image:const DecorationImage(image: AssetImage(constructionWorkerImage),fit: BoxFit.cover)
                                  ),
        )
      ],
    );
  }
}