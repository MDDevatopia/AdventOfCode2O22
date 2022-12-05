import 'dart:io';

Future<int> getRucksack({int limit = 1}) async {
  List<String> lines = await File('assets/inputthree.txt').readAsLines();
  int point = 0;

  List<String> stock = [];
  for (var line in lines) {
    stock.add(line);

    if (stock.length == limit) {
      String Chara = "";
      if (stock.length == 1) {
        String element = stock.join();
        stock.clear();
        stock.add(element.substring(0, (element.length ~/ 2)));
        stock.add(element.substring((element.length ~/ 2)));
      }

      int index = 0;
      stock[index].split("").forEach((a) {
        stock[index + 1].split("").forEach((b) {
          if (a == b) {
            Chara += a;
            return;
          }
        });
      });

      Chara = Set.from(Chara.split("")).join();

      while (Chara.length != 1 && Chara.isNotEmpty) {
        index++;
        String tempo = "";
        stock[index + 1].split("").forEach((a) {
          Chara.split("").forEach((b) {
            if (a == b) {
              tempo += a;
              return;
            }
          });
        });

        tempo = Set.from(tempo.split("")).join();
        Chara = tempo;
      }

      if (Chara == Chara.toUpperCase()) {
        point += (Chara.codeUnitAt(0) - 64) + 26;
      } else {
        point += (Chara.toUpperCase().codeUnitAt(0) - 64);
      }

      stock.clear();
    }
  }
  return point;
}
