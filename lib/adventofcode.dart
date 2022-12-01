
import 'package:adventofcode/exercices/dayone.dart';

void main(List<String> args) async{
    List<int> calories = await getCalories();
    print("#--- Day 1 ---#");
    print("Result Part One : ${calories.last}");
    print("Result Part Two : ${calories[calories.length - 1] + calories[calories.length - 2] + calories[calories.length - 3]}");

}