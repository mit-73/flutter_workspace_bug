export 'package:package_b/package_b.dart';

class CalculatorA {
  int _value = 0;
  int get value => _value;

  int addOne(int value) {
    return _value = value + 1;
  }
}
