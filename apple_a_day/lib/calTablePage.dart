import 'package:flutter/material.dart';
import "./store.dart";
import "./meal.dart";
import "./calTable.dart";

class CalTablePage extends StatefulWidget {
  @override
  CalTablePageState createState() => CalTablePageState();
}

class CalTablePageState extends State<CalTablePage> {
  Widget build(BuildContext context) {
    initCalTable();

    final Iterable<ListTile> tiles = calTable.map((Meal meal) {
      return ListTile(
        title: Text(
          '${meal.name} -  ${meal.calories} קלוריות',
          textDirection: TextDirection.rtl,
        ),
      );
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
          child: ListView(
            children: divided,
          ),
        )
      ]),
    );
  }
}
