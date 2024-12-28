import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddTaskTile extends StatelessWidget {
  final String svgImage;
  final String title;
  final String? subTitle;
  final Color? subTitleColor;
  final Widget? subTitleStatus;
  const AddTaskTile({
    super.key,
    required this.svgImage,
    required this.title,
     this.subTitle,
     this.subTitleColor,
     this.subTitleStatus,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(svgImage),
      title: Text(title,style:const TextStyle(fontWeight: FontWeight.w600),),
      subtitle:subTitleStatus?? Text(subTitle??'',style: TextStyle(
        color: subTitleColor?? Colors.black54
      ),),
      trailing:const Icon(Icons.edit),
    );
  }
}