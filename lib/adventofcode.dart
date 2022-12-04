
import 'package:adventofcode/exercices/dayone.dart';
import 'package:adventofcode/exercices/daytwo.dart';

void main(List<String> args) async{
    List<int> calories = await getCalories();
    print("#--- Day 1 ---#");
    print("Result Part One : ${calories.last}");
    print("Result Part Two : ${calories[calories.length - 1] + calories[calories.length - 2] + calories[calories.length - 3]}");
    Map<String, int> resultOne = {"A X": 4,"B X": 1,"C X": 7,"A Y": 8,"B Y": 5,"C Y": 2,"A Z": 3,"B Z": 9,"C Z": 6};
    Map<String, int> resultTwo = {"A X": 3,"B X": 1,"C X": 2,"A Y": 4,"B Y": 5,"C Y": 6,"A Z": 8,"B Z": 9,"C Z": 7};
    int dayTwoOne = await getResult(maps: resultOne);
    int dayTwoTwo = await getResult(maps: resultTwo);
    print("#--- Day 2 ---#");
    print("Result Part One : $dayTwoOne");
    print("Result Part Two : $dayTwoTwo");
  
}