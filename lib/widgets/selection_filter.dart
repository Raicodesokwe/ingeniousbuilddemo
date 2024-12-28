import 'package:flutter/material.dart';

import '../utils/constants.dart';

class SelectionFilter extends StatefulWidget {
  const SelectionFilter({super.key});

  @override
  State<SelectionFilter> createState() => _SelectionFilterState();
}

class _SelectionFilterState extends State<SelectionFilter> {
  String _selectedFilter=FilterSelection.details.name;
  setFilter({required String filter}){
   setState(() {
       _selectedFilter=filter;
   });
  }

_getFilterItem({required String label,required String filter}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: GestureDetector(
      onTap: (){
        setFilter(filter: filter);
      },
      child: _selectedFilter==filter?
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        decoration: BoxDecoration(
          color: AppColors.appDark,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Center(
          child: Text(label,style:const TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.appGreen,
            
          ),),
        ),
      )
      :Container(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
         border: Border.all(
          color: Colors.black38
         ),
          borderRadius: BorderRadius.circular(30)
        ),
        child: Center(
          child: Text(label,style:const TextStyle(
            fontWeight: FontWeight.w600
          ),),
        ),
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40.0,
        width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
              children: [
             _getFilterItem(label: 'Details', filter: FilterSelection.details.name),
             _getFilterItem(label: 'Checklist', filter: FilterSelection.checklist.name),
             _getFilterItem(label: 'Files', filter: FilterSelection.files.name),
             _getFilterItem(label: 'Discussion', filter: FilterSelection.discussion.name),
              ],
      ),
    );
  }
}