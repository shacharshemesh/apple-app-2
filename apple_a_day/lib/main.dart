import 'package:flutter/material.dart';
import 'addPage.dart';
import "./calTablePage.dart";
import "./homePage.dart";
import "./mealPage.dart";
import "./addPage.dart";
import "./loginPage.dart";


void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return MaterialApp( 
      theme: ThemeData(primaryColor: Colors.red[400]),
       initialRoute: '/',
       routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => LogInPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/HomePage': (context) => HomePage(),
        '/AddPage': (context) => AddPage(),
        '/MealPage': (context) => MealPage(),
        '/CalTablePage': (context) => CalTablePage(),
  },
      );
  }
}