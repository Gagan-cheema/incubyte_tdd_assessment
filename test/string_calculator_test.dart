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
}
