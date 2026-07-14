import 'dart:async';

Stream<dynamic> countdown(int from) async* {
  for (int i = from; i >= 0; i--) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
  yield "หมดเวลา!";
}

Future<void> main() async {
  await for (var value in countdown(5)) {
    if (value is int) {
      print("นับถอยหลัง: $value");
    } else {
      print("$value");
    }
  }
}
