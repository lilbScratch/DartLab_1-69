import 'dart:async';

void main() {
  final StreamController<String> notificationController = StreamController<String>();

  notificationController.stream.listen(
    (notification) {
      print("มีแจ้งเตือน: $notification");
    },
    onDone: () {
      print("สตรีมสิ้นสุดแล้ว: ระบบแจ้งเตือนปิดตัวลงเรียบร้อย");
    },
  );

  notificationController.add("ยอดเงินของคุณได้รับการโอนเข้าบัญชีเรียบร้อยแล้ว");
  notificationController.add("มีอุปกรณ์ใหม่เข้าใช้งานบัญชีของคุณ");
  notificationController.add("โปรโมชันพิเศษใกล้จะหมดอายุในอีก 2 ชั่วโมง");

  notificationController.close();
}
