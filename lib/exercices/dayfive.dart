import 'dart:io';

Future<String> getTopOfStack({bool isReverse = true}) async {
  List<String> lines = await File('assets/inputfive.txt').readAsLines();
  List<String> creates = [];
  List<List<String>> stacks = [];
  List<String> moves = [];
  int mapSize = 0;
  String result = "";
  for (var element in lines) {
    if (element.isEmpty) {
      break;
    }
    creates.add(element);
  }

  creates = creates.reversed.toList();
  mapSize = int.parse(creates.first[creates.first.length - 2]);
  moves = lines.sublist(creates.length + 1, lines.length);
  stacks = List.generate(mapSize, (i) => []);

  creates.removeAt(0);

  for (var create in creates) {
    int index = 1;
    for (int x = 0; index < create.length; x++) {
      if (create[index] != " ") {
        stacks[x].add(create[index]);
      }
      index += 4;
    }
  }
  for (var move in moves) {
    List<String> setup = move.split(" ");

    int nb = int.parse(setup[1]);
    int from = int.parse(setup[3]);
    int to = int.parse(setup[5]);
    int len = stacks[from - 1].length;
    List<String> letter = [];
    if (isReverse) {
      letter = stacks[from - 1].sublist(len - nb).reversed.toList();
    } else {
      letter = stacks[from - 1].sublist(len - nb).toList();
    }

    stacks[from - 1].removeRange(len - nb, len);
    stacks[to - 1].addAll(letter);
  }
  result = stacks.map((e) {
    return e.last;
  }).toString();
  return result
      .replaceAll(", ", "")
      .replaceFirst("(", "")
      .replaceFirst(")", "");
}
