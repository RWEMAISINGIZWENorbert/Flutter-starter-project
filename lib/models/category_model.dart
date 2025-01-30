import 'package:flutter/material.dart';
import "dart:ui";

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories(){

   List<CategoryModel> categories =[];

     categories.add(
        CategoryModel(name: "Salad", iconPath: 'assets/1', boxColor: Color(0xff92A3FD))
     );
     categories.add(
        CategoryModel(name: "Cake", iconPath: 'assets/2', boxColor: Color.fromARGB(255, 153, 163, 5))
     );
     categories.add(
        CategoryModel(name: "Pie", iconPath: 'assets/3', boxColor: Color.fromARGB(255, 5, 255, 68))
     );
     
     return categories; 
  }
}