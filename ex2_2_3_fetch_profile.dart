import 'dart:async';

Future<Map<String, dynamic>> fetchProfile(int userId) async {
  await Future.delayed(Duration(seconds: 2));
  
  if (userId <= 0) {
    throw Exception("User ID ต้องมากกว่า 0 (ได้รับค่า: $userId)");
  }
  
  return {
    "id": userId,
    "name": "สมศักดิ์ รักดี",
    "email": "somsak.r@example.com",
    "status": "Active"
  };
}

Future<void> main() async {
  try {
    final profile = await fetchProfile(42);
    print("ผลลัพธ์: ดึงข้อมูลโปรไฟล์สำเร็จ! -> $profile");
  } catch (error) {
    print("ผลลัพธ์ (catch): เกิดข้อผิดพลาด -> $error");
  } finally {
    print("ผลลัพธ์ (finally): การทำงานกรณีที่ 1 เสร็จสิ้นเรียบร้อย\n");
  }

  try {
    final profile = await fetchProfile(0);
    print("ผลลัพธ์: ดึงข้อมูลโปรไฟล์สำเร็จ! -> $profile");
  } catch (error) {
    print("ผลลัพธ์ (catch): เกิดข้อผิดพลาด -> $error");
  } finally {
    print("ผลลัพธ์ (finally): การทำงานกรณีที่ 2 เสร็จสิ้นเรียบร้อย\n");
  }
}
