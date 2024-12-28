import 'package:flutter/material.dart';
import 'package:ingeniousbuilddemo/widgets/banner_image.dart';
import 'package:ingeniousbuilddemo/widgets/common_button.dart';
import 'package:ingeniousbuilddemo/widgets/home_header.dart';
import 'package:ingeniousbuilddemo/widgets/task_list.dart';

import '../utils/common_functions.dart';
import '../utils/constants.dart';
import '../widgets/menu_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
   late AnimationController controller;
  late Animation<double> fadeAnimation;
  late AnimationController scaleController;
  late Animation<double> scaleAnimation;
  @override
  void initState() {
   controller =
        AnimationController(vsync: this, duration:const Duration(milliseconds: 200));
    fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(controller);
    scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
    scaleAnimation =
        CurvedAnimation(parent: scaleController, curve: Curves.elasticInOut);
    Future.delayed(const Duration(milliseconds: 600), () {
      controller.forward().then((value) => scaleController.forward());
    });
    super.initState();
   
  }

  @override
  void dispose() {
    controller.dispose();
    scaleController.dispose();
    super.dispose();
    
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: FadeTransition(
      opacity: fadeAnimation,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: screenHeight(context) * 0.02,),
           const HomeHeader(),
                 SizedBox(height: screenHeight(context) * 0.02,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const Text('Recent projects',style: TextStyle(
                    fontSize: 16
                   ),),
                    CommonButton(
                      label: 'See All Projects',
                      width: screenWidth(context) * .4,
                      height: 40,
                    )
                  ],
                 ),
                  SizedBox(height: screenHeight(context) * 0.02,),
                 ScaleTransition(
                  scale: scaleAnimation,
                  child: const MenuRow()),
                       SizedBox(height: screenHeight(context) * 0.02,),
                       const BannerImage(),
               SizedBox(height: screenHeight(context) * 0.02,),
                  Row(
                                              children: [
                                               const Text('Recent Tasks',style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15,
                                                  color: AppColors.appDark
                                                ),),
                                               const Spacer(),
                                                Text('See all',style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                  color: AppColors.appDark.withOpacity(0.77)
                                                ),),
                                              ],
                                            ),
                                             SizedBox(
                                              height: screenHeight(context) * .02,
                                            ),
                                            const TaskList(),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    ),));
  }
}

