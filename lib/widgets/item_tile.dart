import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final Color circleColor;
  final Color textColor;
  final String label;
  const ItemTile({
    super.key,
    required this.circleColor,
    required this.label,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       Container(
         height: 10,
         width: 10,
         decoration:  BoxDecoration(
           shape: BoxShape.circle,
           color: circleColor
         ),
       ),
      const SizedBox(width: 3,),
          Text(label,style: TextStyle(color: textColor,fontWeight: FontWeight.w500),),
      ],
    );
  }
}

