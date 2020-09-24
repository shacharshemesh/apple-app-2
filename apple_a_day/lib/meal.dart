import 'food.dart';

class Meal {
  const Meal({this.name, this.foods});

  final String name;
  final List<Food> foods;

  int get calories =>
      foods.fold(0, (calories, food) => calories += food.calories);

  void add(Food food) => foods.add(food);
}
