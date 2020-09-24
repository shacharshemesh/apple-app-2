import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  @override 
  LogInPageState createState() => LogInPageState();
}

class LogInPageState extends State<LogInPage>{

  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: 
      Column(
      children:[ 
        SizedBox(height: 130.0,),
        Text(" תפוח", style: TextStyle( fontSize: 80.0, color: Colors.white, fontWeight: FontWeight.bold)),
        Text(" ותן לרופא לנוח ", style: TextStyle( fontSize: 30.0, color: Colors.white),),
        SizedBox(height: 50.0,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          SizedBox(width: 100.0,),
          Expanded( flex: 30, child: 
          TextField(
          //controller: ,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            focusColor: Colors.white,
            border: new OutlineInputBorder(
              borderRadius: const BorderRadius.all(
              const Radius.circular(15.0),
              ) ),
            hintText: 'שם משתמש',
            contentPadding: EdgeInsets.all(10))),),
        SizedBox(width: 100.0,),
      ]),
      //Text(),
      SizedBox(height: 20.0,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(width: 100.0,),
        Expanded( flex: 30, child: 
         TextField(
          //controller: ,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            focusColor: Colors.white,
            border: new OutlineInputBorder(
              borderRadius: const BorderRadius.all(
              const Radius.circular(15.0),),
            ),
            hintText: 'סיסמא',
            contentPadding: EdgeInsets.all(10))),),
        SizedBox(width: 100.0,),
      ]),
      SizedBox(height: 10.0,),
      InkWell(child: Text("התחבר/י", style: TextStyle( fontSize: 18.0, color: Colors.white, decoration: TextDecoration.underline,) ,) ,onTap: () {  Navigator.pushNamed(context, '/HomePage');},),
      ]),
      backgroundColor: Colors.red[400],
    );
  }
}
