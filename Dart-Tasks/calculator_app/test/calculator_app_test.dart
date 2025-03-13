
import 'package:calculator_app/calculator_app.dart';
import 'package:test/test.dart';

void main() {
  group('Calculator', () {
    final calculator = Calculator();

    test('Addition', () {
      expect(calculator.add(10, 5), 15);
    });

    test('Subtraction', () {
      expect(calculator.subtract(10, 5), 5);
    });

    test('Multiplication', () {
      expect(calculator.multiply(10, 5), 50);
    });

    test('Division', () {
      expect(calculator.divide(10, 5), 2);
    });

    test('Division by zero', () {
      expect(() => calculator.divide(10, 0), throwsUnsupportedError);
    });

    test('Modulus', () {
      expect(calculator.modulus(10, 3), 1);
    });

    test('Power', () {
      expect(calculator.power(2, 3), 8);
    });
  });
}