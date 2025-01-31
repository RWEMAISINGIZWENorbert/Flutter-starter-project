import 'package:flutter/material.dart';

class DietModel {
   String name;
   String iconPath;
   String level;
   String duration;
   String calorie;
   bool viewIsSeleccted;
   Color boxColor;

   DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.viewIsSeleccted,
    required this.boxColor
   });

   
   static List<DietModel> getDietModel(){
      List<DietModel> diets = [];
      
      diets.add(
        DietModel(name: 'name', iconPath: 'iconPath', level: 'level', duration: '3min', calorie: 'calorie', viewIsSeleccted: true, boxColor: Color.fromARGB(0, 8, 33, 223)),
      );
      diets.add(
        DietModel(name: 'name1', iconPath: 'iconPath1', level: 'level1', duration: '3min1', calorie: 'calorie1', viewIsSeleccted: true, boxColor: Color(0x00031601)),
      );
   
    return diets;
   }

}