import 'dart:math';

class Calculator {
  double add(double a, double b) => a + b;
  double subtract(double a, double b) => a - b;
  double multiply(double a, double b) => a * b;
  double divide(double a, double b) {
    if (b == 0) {
      throw UnsupportedError('Division by zero is not allowed.');
    }
    return a / b;
  }

  double modulus(double a, double b) => a % b;
  double power(double a, double b) {
    return pow(a, b).toDouble();
  }
}

