class Temperature{
  double _celsius = 0;

  double get fahrenheit => _celsius;

  set fahrenheit(double temp) {
    if (temp < -273.15) {
      print("error temp not valid");
    } else {
      _celsius = temp;
    }
  }

  void convertF(double amount) {
    if (amount > -273.15) _celsius = amount*9/5+32;
  }
}

void main() {
  var tempe = Temperature();
  tempe.convertF(50);
  print("fahrenheit: ${tempe.fahrenheit}");
}