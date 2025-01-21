class CalculatorB {
  int _value = 0;
  int get value => _value;

  int addOne(int value) {
    return _value = value + 1;
  }
}
