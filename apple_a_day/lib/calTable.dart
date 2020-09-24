import 'food.dart';
import 'store.dart';
import 'meal.dart';

void initCalTable() {
  calTable = Set<Meal>();

  calTable.add(Meal()..add(Food(name: "100 גרם לחם לבן", calories: 239)));
  calTable.add(Meal()..add(Food(name: "100 גרם לחם שחור", calories: 60)));
  calTable
      .add(Meal()..add(Food(name: "100 גרם לחם מקמח מלא רגיל", calories: 251)));
  calTable
      .add(Meal()..add(Food(name: "100 גרם לחם מקמח מלא קל", calories: 228)));
  calTable.add(Meal()..add(Food(name: "100 גרם פיתה מקמח מלא", calories: 216)));
  calTable.add(Meal()..add(Food(name: "100 גרם פיתה מקמח לבן", calories: 192)));
  calTable.add(Meal()..add(Food(name: "100 מל' חלב 3%", calories: 60)));
  calTable.add(
      Meal()..add(Food(name: "100 מל' שוקו (ללא תוספת סוכר)", calories: 68)));
  calTable.add(Meal()..add(Food(name: "100 מל' חלב עיזים", calories: 66)));
  calTable.add(Meal()..add(Food(name: "100 גרם קוטג' 5%", calories: 93)));
  calTable.add(Meal()..add(Food(name: "100 גרם גבינה לבנה 5%", calories: 100)));
  calTable
      .add(Meal()..add(Food(name: "100 גרם גבינה צהובה 28%", calories: 349)));
  calTable.add(Meal()..add(Food(name: "100 גרם גיל 3%", calories: 54)));
  calTable.add(Meal()..add(Food(name: "100 גרם יוגורט 1.5%", calories: 48)));
  calTable.add(Meal()..add(Food(name: "100 גרם פתיתים", calories: 150)));
  calTable.add(Meal()..add(Food(name: "100 גרם ספגטי", calories: 181)));
  calTable.add(Meal()..add(Food(name: "100 גרם קוסקוס", calories: 215)));
  calTable.add(Meal()..add(Food(name: "100 גרם אורז לבן", calories: 121)));
  calTable.add(Meal()..add(Food(name: "100 גרם אורז מלא", calories: 133)));
  calTable.add(Meal()..add(Food(name: "100 גרם המבורגר בקר", calories: 249)));
  calTable.add(Meal()..add(Food(name: "100 גרם שניצל עוף", calories: 164)));
  calTable.add(Meal()..add(Food(name: "100 גרם שניצל תירס", calories: 214)));
}
