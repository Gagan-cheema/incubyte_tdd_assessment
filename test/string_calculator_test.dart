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

  test('new lines between numbers are allowed', () {
    final calc = StringCalculator();
    expect(calc.add("1\n2,3"), equals(6));
  });

  test('custom delimiter is supported', () {
    final calc = StringCalculator();
    expect(calc.add("//;\n1;2"), equals(3));
  });

  test('single negative number throws exception', () {
    final calc = StringCalculator();

    expect(
      () => calc.add("1,-2,3"),
      throwsA(predicate((e) => e.toString().contains("negative numbers not allowed -2"))),
    );
  });

  test('multiple negative numbers are listed in exception message', () {
    final calc = StringCalculator();

    expect(
      () => calc.add("1,-2,-5,3"),
      throwsA(predicate((e) => e.toString().contains("negative numbers not allowed -2,-5"))),
    );
  });
}
