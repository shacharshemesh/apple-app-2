import 'package:flutter/material.dart';
import "./store.dart";
import "./meal.dart";

class MealPage extends StatefulWidget {
  @override
  MealPageState createState() => MealPageState();
}

class MealPageState extends State<MealPage> {
  void eatMeal(int cal) {
    eatenCal += cal;
    Navigator.pushNamed(context, '/HomePage');
  }

  Widget build(BuildContext context) {
    final Iterable<ListTile> tiles = savedMealList.map((Meal meal) {
      return ListTile(
          title: Text(
            '${meal.name} -  ${meal.calories} קלוריות',
            textDirection: TextDirection.rtl,
          ),
          onTap: () {
            eatMeal(meal.calories);
          });
    });
    final List<Widget> divided =
        ListTile.divideTiles(tiles: tiles, context: context).toList();

    return Scaffold(
      appBar: MyAppBar(),
      body: Column(children: [
        TextField(
            onChanged: (value) => {},
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            decoration: InputDecoration(
              hintText: "חפש/י כאן",
            )),
        Expanded(
            child: (divided.length == 0
                ? Center(
                    child: Text(
                    "לא נמצאו ארוחות שמורות",
                    style: TextStyle(fontSize: 16.0),
                  ))
                : ListView(
                    children: divided,
                  ))),
      ]),
    );
  }
}
