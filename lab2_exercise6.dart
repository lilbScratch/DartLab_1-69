double calculateRecArea(double width, double length) {
  return width * length;
}

double calculateTriArea(double base, double height) {
  return 0.5 * base * height;
}

double calculateCylinder(double radius, double height) {
  const double pi = 22 / 7; // เปลี่ยนมาใช้ 22/7 ตามที่กำหนด
  return pi * radius * radius * height;
}

void main() {
  double rectArea = calculateRecArea(5.0, 10.0);
  print('สี่เหลี่ยม: $rectArea ตารางหน่วย');

  double triArea = calculateTriArea(6.0, 8.0);
  print('สามเหลี่ยม: $triArea ตารางหน่วย');

  double cyl = calculateCylinder(3.0, 10.0);
  print('ทรงกระบอก: ${cyl.toStringAsFixed(2)} ลูกบาศก์หน่วย');
}