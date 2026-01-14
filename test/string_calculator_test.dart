import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_tdd_assessment/string_calculator.dart';

void main() {
  // Empty string
  test('empty string returns 0', () {
    final calc = StringCalculator();
    expect(calc.add(""), equals(0));
  });

  // Single number
  test('single number returns the number itself', () {
    final calc = StringCalculator();
    expect(calc.add("5"), equals(5));
  });

  // Two comma separated numbers
  test('two comma separated numbers are added', () {
    final calc = StringCalculator();
    expect(calc.add("1,5"), equals(6));
  });

  test('multiple numbers are added', () {
    final calc = StringCalculator();
    expect(calc.add("1,2,3,4"), equals(10));
  });
}
