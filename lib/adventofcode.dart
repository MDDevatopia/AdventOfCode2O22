import 'package:adventofcode/exercices/dayfive.dart';
import 'package:adventofcode/exercices/dayfour.dart';
import 'package:adventofcode/exercices/dayone.dart';
import 'package:adventofcode/exercices/daysix.dart';
import 'package:adventofcode/exercices/daythree.dart';
import 'package:adventofcode/exercices/daytwo.dart';

import 'exercices/dayseven.dart';

void main(List<String> args) async {
  // List<int> calories = await getCalories();
  // print("#--- Day 1 ---#");
  // print("Result Part One : ${calories.last}");
  // print("Result Part Two : ${calories[calories.length - 1] + calories[calories.length - 2] + calories[calories.length - 3]}");

  // Map<String, int> resultOne = {"A X": 4,"B X": 1,"C X": 7,"A Y": 8,"B Y": 5,"C Y": 2,"A Z": 3,"B Z": 9,"C Z": 6};
  // Map<String, int> resultTwo = {"A X": 3,"B X": 1,"C X": 2,"A Y": 4,"B Y": 5,"C Y": 6,"A Z": 8,"B Z": 9,"C Z": 7};
  // int dayTwoOne = await getResult(maps: resultOne);
  // int dayTwoTwo = await getResult(maps: resultTwo);
  // print("#--- Day 2 ---#");
  // print("Result Part One : $dayTwoOne");
  // print("Result Part Two : $dayTwoTwo");

  // int dayThreeOne = await getRucksack();
  // int dayThreeTwo = await getRucksack(limit: 3);
  // print("#--- Day 3 ---#");
  // print("Result Part One : $dayThreeOne");
  // print("Result Part Two : $dayThreeTwo");

  // Map<String, int> dayFour = await getFullyContainsAndOverlaps();
  // print("#--- Day 4 ---#");
  // print("Result Part One : ${dayFour["fullyContains"]}");
  // print("Result Part Two : ${dayFour["overlap"]}");

  // print("#--- Day 5 ---#");
  // print("Result Part One : ${await getTopOfStack(isReverse: true)}");
  // print("Result Part Two : ${await getTopOfStack(isReverse: false)}");

  // print("#--- Day 6 ---#");
  // print("Result Part One : ${await getStartOfPacket()}");
  // print("Result Part Two : ${await getStartOfPacket(distinct: 14)}");

  print("#--- Day 7 ---#");
  Map<String,int> daySeven = await totalSizeDirectory();
  int resultOne = 0;
  int resultTwo = daySeven["/"]!;
  int needSpace = 30000000 - (70000000 - resultTwo);
  daySeven.forEach((key, value) { 
    if(value <= 100000){
      resultOne += value;
    }
    if(value > needSpace && resultTwo > value){
      resultTwo = value;      
    }
  });
  print("Result Part One : $resultOne");
  print("Result Part Two : $resultTwo");
}

