import 'dart:io';

IoServise io = IoServise();

class IoServise {
  void _outpud(String text) {
    stdout.write(text);
  }

  String outpudText(String text) {
    _outpud(text);
    return stdin.readLineSync()!;
  }

  int outpudNum(String text) {
    _outpud(text);
    return int.parse(stdin.readLineSync()!);
  }
}
