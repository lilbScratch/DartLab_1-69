Future<void> main() async {
  print("1. เริ่ม");
  final futureResult = Future.delayed(Duration(seconds: 3), () {
    return "2. โหลดเสร็จ";
  });
  print("3. จบ");

  final value = await futureResult;
  print(value);
}
