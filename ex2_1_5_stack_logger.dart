mixin Loggable {
  void log(String msg) {
    DateTime now = DateTime.now();
    print('[$now] LOG: $msg');
  }
}

class Stack<T> with Loggable {
  final List<T> _items = [];

  void push(T item) {
    _items.add(item);
    log('Push -> $item (จำนวนข้อมูลปัจจุบัน: ${_items.length})');
  }

  T pop() {
    if (_items.isEmpty) {
      log('Pop Failed -> ไม่สามารถดึงข้อมูลได้เนื่องจาก Stack ว่างเปล่า');
      throw StateError('Cannot pop from an empty stack');
    }
    T item = _items.removeLast();
    log('Pop -> $item (จำนวนข้อมูลคงเหลือ: ${_items.length})');
    return item;
  }

  List<T> get items => List.unmodifiable(_items);
}

void main() {
  Stack<int> numberStack = Stack<int>();
  numberStack.push(10);
  numberStack.push(20);
  numberStack.push(30);
  numberStack.pop();
  numberStack.pop();

  Stack<String> stringStack = Stack<String>();
  stringStack.push('Dart');
  stringStack.push('Flutter');
  stringStack.pop();

  // ทดสอบ Pop ตอน Stack ว่างเปล่า (เพื่อดูการแจ้งเตือน Error)
  // stringStack.pop();
  // stringStack.pop(); 
}
