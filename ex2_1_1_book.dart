class book{
  int? price;
  String? title;
  String? author;

  void showDetail(){{
    print("ชื่อผู้เขียน: $author");
    print("ชื่อหนังสือ: $title");
    print("ราคา: $price บาท");
  }}
}

void main() {
  book b1 = book();

  b1.author = "พัชรพล";
  b1.title = "Basic Dart Programing";
  b1.price = 5;

  b1.showDetail();
}