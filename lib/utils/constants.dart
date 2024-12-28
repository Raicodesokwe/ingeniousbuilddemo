import 'package:flutter/material.dart';
//Colors
class AppColors {
  static const appDark = Color(0xff292D32);
  static const appGreen = Color(0xFF64FF6A);
}
//fonts
const String clashDisplay='ClashDisplay';
//assetpath
const String assetPath='assets/images/';
//images and icons
const String blurryImage='${assetPath}blurry-image.png';
const String logoImage='${assetPath}logo.svg';
const String menuIcon='${assetPath}menu.svg';
const String fadedLogoIcon='${assetPath}faded-logo.svg';
const String fadedLogoTwoIcon='${assetPath}faded-logo-two.svg';
const String presentationBoardIcon='${assetPath}presentation-board.svg';
const String truckIcon='${assetPath}truck.svg';
const String tasksIcon='${assetPath}tasks.svg';
const String taskIcon='${assetPath}task.svg';
const String projectIcon='${assetPath}project.svg';
const String sourceIcon='${assetPath}source.svg';
const String typeIcon='${assetPath}type.svg';
const String priorityIcon='${assetPath}priority.svg';
const String statusIcon='${assetPath}status.svg';
const String constructionWorkerImage='${assetPath}construction-worker.png';
//filters
enum FilterSelection {
  details,
  checklist,
  files,
  discussion
}