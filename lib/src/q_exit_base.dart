import 'dart:convert';
import 'dart:io';

/// Listens on stdin, when the user presses `q` and the carriage return
/// the program will exit.
void qToExit() {
  Stream cmdLine = stdin
      .transform(Utf8Decoder())
      .transform(LineSplitter());

  print('press q to exit');

  cmdLine.listen((line) async {
      if (line == 'q') {
        exit(0);
      }
  });
}
