import 'package:flutter/material.dart';
import 'meal.dart';

var eatenCal = 500;
var destenitionCal = 2000;

var savedMealList = Set<Meal>();
var calTable = Set<Meal>();

Widget MyAppBar(){
  return PreferredSize(
          preferredSize: Size.fromHeight(70.0), child: AppBar(
            title: Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
                Text("\n ותן לרופא לנוח ", style: TextStyle( fontSize: 20.0),),
                Text(" תפוח", style: TextStyle( fontSize: 45.0)),
                ]),),);
}