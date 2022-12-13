import 'dart:io';

Future<int> getStartOfPacket({int distinct = 4}) async {
  String lines = await File('assets/inputsix.txt').readAsString();
  for(int x = 0; x < lines.length - distinct;x++){
      if(lines.substring(x,x + distinct).split("").toSet().length == distinct){
        return x + distinct;
      }
  }
  return 0;
}