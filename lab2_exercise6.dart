import 'dart:ffi';

void executeOp(int a, int b,int Function(int,int) type){
  var result = type(a,b)
  print('rectangle size: $result');
}

int rectangle(int w,int h){
  return w*h;
}

int triangle(int w,int h){
  return w*h;
}
void main(){

}