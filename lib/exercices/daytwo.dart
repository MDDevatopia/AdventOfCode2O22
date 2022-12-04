import 'dart:io';

Future<int> getResult({required Map<String, int> maps}) async {
  List<String> lines = await File('assets/inputtwo.txt').readAsLines();
  int point = 0;
  for (var element in lines) {
    point += maps[element]!;
  }
  return point;
}
