import 'dart:io';
import 'dart:math';

Future<Map<String, int>> totalSizeDirectory() async {
  List<String> lines = await File('assets/inputseven.txt').readAsLines();
  Map<String, int> folders = {"/": 0};
  String cd = "";
  for (var line in lines) {
    List<String> cmd = line.split(" ");
    if (cmd[1] == "cd") {
      if (cmd[2] == "..") {
        List<String> args = cd.split("/");
        cd = args.sublist(0, args.length - 1).join("/");
        if (cd.isEmpty) cd += "/";
      } else if (cd.length >= 2) {
        cd += "/${cmd[2]}";
      } else {
        cd += cmd[2];
      }
    } else if (cmd[0] == "dir") {
      if (cd.length >= 2) {
        folders.addAll({"$cd/${cmd[1]}": 0});
      } else {
        folders.addAll({"/${cmd[1]}": 0});
      }
    } else if (int.tryParse(cmd[0]) != null) {
      String path = "";
      if (cd.length == 1) {
        folders.update(cd, (value) => value + int.parse(cmd[0]));
      } else {
        cd.split("/").forEach((element) {
          if (element.isEmpty) {
            path += "/";
          } else if (path.length < 2) {
            path += element;
          } else {
            path += "/$element";
          }
          folders.update(path, (value) => value + int.parse(cmd[0]));
        });
      }
    }
  }
  return folders;
}
