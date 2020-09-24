import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import "./store.dart";
import "./quotes.dart";
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var rng = new Random();

  void _moveToAddPage() {
    Navigator.pushNamed(context, '/AddPage');
  }

  // void reload(){
  //   setState(() {});}

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "ברוכ/ה הבא/ה",
              style: TextStyle(fontSize: 30.0),
            ),
            Text(
              ",סער",
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(
              height: 18.0,
            ),
            CircularPercentIndicator(
                radius: 190.0,
                lineWidth: 21.9,
                animation: true,
                percent: (eatenCal / destenitionCal <= 1
                    ? eatenCal / destenitionCal
                    : 1),
                center: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: '${eatenCal}',
                      style: TextStyle(color: Colors.black, fontSize: 30.0),
                    ),
                    TextSpan(
                      text: "\n_______________\n",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 9.0,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' ${destenitionCal}',
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ]),
                ),
                progressColor: (eatenCal / destenitionCal <= 0.25
                    ? Colors.red[300]
                    : (eatenCal / destenitionCal <= 0.5
                        ? Colors.orange[300]
                        : (eatenCal / destenitionCal <= 0.75
                            ? Colors.yellow[300]
                            : (eatenCal / destenitionCal <= 1
                                ? Colors.green[300]
                                : Colors.red[400]))))),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Text((eatenCal / destenitionCal >= 0.90 ? " - " : " ")),
              Icon((eatenCal / destenitionCal >= 0.90 ? Icons.favorite : null),
                  color: Colors.pink[200], size: 14.0),
              Text((eatenCal / destenitionCal >= 0.90 ? "שים " : " "))
            ]),
            Text(
              (eatenCal / destenitionCal > 1
                  ? 'חרגת מכמות הקלוריות המומלצת להיום'
                  : (eatenCal / destenitionCal == 1
                      ? 'אכלת את כמות הקלוריות המומלצת להיום'
                      : (eatenCal / destenitionCal >= 0.90
                          ? "את/ה מתקרב/ת לכמות הקלוריות המומלצת להיום"
                          : " "))),
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(
              height: 18.0,
            ),
            RaisedButton(
                onPressed: _moveToAddPage,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.lightBlue[400],
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.add,
                          size: 14,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: "הוסף מאכל ",
                      )
                    ],
                  ),
                )),
            //RaisedButton(onPressed: reload, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),), color: Colors.grey[400],
            //  child: RichText( text: TextSpan( children: [ WidgetSpan( child: Icon(Icons.refresh, size: 14, color: Colors.white,),), TextSpan(text: "רענן ",)],),) ),
            SizedBox(
              height: 18.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color: Colors.blueGrey[100], style: BorderStyle.solid)),
              height: 90.0,
              width: 300,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Text(
                      'חוכמת התפוח ~\n' +
                          healthQuotes[rng.nextInt(healthQuotes.length - 1)],
                      textDirection: TextDirection.rtl),
                ),
              ),
            )
          ],
        )));
  }
}
