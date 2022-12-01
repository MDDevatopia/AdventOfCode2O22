import 'dart:io';

Future<List<int>> getCalories() async {
  List<int> calories = [0];
  List<String> lines = await File('assets/inputone.txt').readAsLines();
  for (var element in lines) {
    if (element.isEmpty) {
      calories.add(0);
      continue;
    }
    calories.last += int.parse(element);
  }
  calories.sort();
  return calories;
}
