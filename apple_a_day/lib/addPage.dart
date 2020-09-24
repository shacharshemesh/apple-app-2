import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'food_field.dart';
import "./store.dart";
import "./meal.dart";
import "food.dart";

class AddPage extends StatefulWidget {
  @override
  AddPageState createState() => AddPageState();
}

class AddPageState extends State<AddPage> {
  var foods = <Food>[];

  var foodField;
  final resultedMeal = Meal();
  var totalCalOfMeal = 0;
  TextEditingController nameField = new TextEditingController();
  TextEditingController calNumField = new TextEditingController();

  void addCalToTotal() {
    totalCalOfMeal += int.parse(calNumField.text);
    foods.add(Food(name: nameField.text, calories: int.parse(calNumField.text)));
    debugPrint('foodsNames array $foods');
    calNumField.text = "";
    nameField.text = "";
  }

  void eat() {
    eatenCal = int.parse(calNumField.text) + eatenCal + totalCalOfMeal;
    debugPrint('totalCalOfMeal $totalCalOfMeal');
    Navigator.pushNamed(context, '/HomePage');
  }

  void saveMeal(String name, int cal) {
    savedMealList.add(Meal());
    Navigator.of(context).pop();
  }

  void openSaveAsMealDialog() {
    // int mealTotalCal = getTotalCal();

    String mealName = "";

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('איך קוראים לארוחה?', textDirection: TextDirection.rtl),
            content: new Row(
              children: <Widget>[
                new Expanded(
                    child: new TextField(
                  autofocus: true,
                  textDirection: TextDirection.rtl,
                  onChanged: (value) {
                    mealName = value;
                  },
                ))
              ],
            ),
            actions: <Widget>[
              FlatButton(
                child: const Text('שמור כארוחה'),
                onPressed: () => {
                  saveMeal(
                  mealName, totalCalOfMeal)
                },
              ),
              FlatButton(
                child: const Text('בטל'),
                onPressed: () => {Navigator.of(context).pop()},
              ),
              SizedBox(
                width: 40.0,
              ),
            ],
          );
        });
  }

  Widget FoodField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          flex: 30,
          child: TextField(
              controller: calNumField,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly
              ],
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
              decoration: InputDecoration(
                  hintText: 'קלוריות', contentPadding: EdgeInsets.all(10))),
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          flex: 70,
          child: TextField(
              controller: nameField,
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                  hintText: '?מה אכלתי', contentPadding: EdgeInsets.all(10))),
        ),
        SizedBox(
          width: 10.0,
        ),
      ],
    );
  }

  Widget FoodText(Food food) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Spacer(
          flex: 1,
        ),
        Text(
          food.calories.toString(),
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Text(
          food.name,
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        Spacer(
          flex: 1,
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: MyAppBar(),
        body: Row(
          children: <Widget>[
            Spacer(
              flex: 1,
            ),
            Flexible(
              flex: 4,
              child: Column(
                children: <Widget>[
                  Spacer(
                    flex: 1,
                  ),
                  Flexible(
                    flex: 4,
                    child: Text(
                      "הוספת ארוחה",
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  for (var food in foods)
                    FoodText(food),
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FoodField(),
                        IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                addCalToTotal();
                              });
                            }),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          child: Text(
                            "לא בטוח/ה בכמות הקלוריות? לחצ/י כאן",
                            style: TextStyle(
                              fontSize: 16.0,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/CalTablePage');
                          },
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        RaisedButton(
                          onPressed: () =>
                              {Navigator.pushNamed(context, '/MealPage')},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.grey[400],
                          child: Text(
                            "למעבר לארוחות השמורות שלך",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            RaisedButton(
                              onPressed: openSaveAsMealDialog,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              color: Colors.lightBlue[400],
                              child: Text(
                                "שמירה כארוחה",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            RaisedButton(
                              onPressed: eat,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              color: Colors.lightBlue[400],
                              child: Text(
                                "הוספת הקלוריות",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ));
  }
}
