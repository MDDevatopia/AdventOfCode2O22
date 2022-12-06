import 'dart:io';

Future<Map<String, int>> getFullyContainsAndOverlaps() async {
  List<String> lines = await File('assets/inputfour.txt').readAsLines();
  int fullyContains = 0;
  int overlap = 0;
  for (var element in lines) {
    List<int> first = element.split(",")[0].split("-").map(int.parse).toList();
    List<int> second = element.split(",")[1].split("-").map(int.parse).toList();

    if ((first[0] <= second[0] &&
            first[1] >= second[1]) ||
        (second[0] <= first[0] &&
            second[1] >= first[1])) {
      fullyContains++;
      overlap++;
    } else if ((isBeetween(
                second[0], first[0], first[1]) ||
            isBeetween(second[1], first[0], first[1])) ||
        (isBeetween(first[0], second[0], second[1]) ||
            isBeetween(first[1], second[0], second[1]))) {
      overlap++;
    }
  }

  return {"fullyContains": fullyContains, "overlap": overlap};
}

bool isBeetween(int number, int from, int to) {
  return from <= number && number <= to;
}
