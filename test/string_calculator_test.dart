import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_tdd_assessment/string_calculator.dart';

void main() {
  test('empty string returns 0', () {
    final calc = StringCalculator();
    expect(calc.add(""), equals(0));
  });
}
