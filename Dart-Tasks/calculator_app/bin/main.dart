
import 'dart:io';
import 'dart:async';
import 'package:calculator_app/calculator_app.dart'; 

void main() async {
  final calculator = Calculator();

  while (true) {
    print("Welcome to the Dart Calculator!");
    print("Enter the first number:");
    final num1 = _getValidNumber();

    print("Enter the second number:");
    final num2 = _getValidNumber();

    print("Enter the operation (+, -, *, /, %, ^):");
    final operator = _getValidOperator();

    try {
      double result;
      switch (operator) {
        case '+':
          result = calculator.add(num1, num2);
          break;
        case '-':
          result = calculator.subtract(num1, num2);
          break;
        case '*':
          result = calculator.multiply(num1, num2);
          break;
        case '/':
          result = calculator.divide(num1, num2);
          break;
        case '%':
          result = calculator.modulus(num1, num2);
          break;
        case '^':
          result = calculator.power(num1, num2);
          break;
        default:
          throw FormatException("Invalid operator");
      }

      // Delay the result output by 5 seconds
      await Future.delayed(Duration(seconds: 5));
      print("Result: $result");
    } on UnsupportedError catch (e) {
      print("Error: $e"); // Handle division by zero
    } on FormatException catch (e) {
      print("Error: $e"); // Handle invalid operator
    } catch (e) {
      print("An unexpected error occurred: $e"); // Handle other errors
    }

    // Ask the user if they want to perform another calculation
    print("Do you want to perform another calculation? (yes/no)");
    final choice = stdin.readLineSync()?.toLowerCase();
    if (choice != 'yes') {
      break;
    }
  }
}

// Helper function to get a valid number from the user
double _getValidNumber() {
  while (true) {
    final input = stdin.readLineSync();
    final number = double.tryParse(input ?? '');
    if (number != null) {
      return number;
    }
    print("Invalid input. Please enter a valid number:");
  }
}

// Helper function to get a valid operator from the user
String _getValidOperator() {
  const validOperators = ['+', '-', '*', '/', '%', '^'];
  while (true) {
    final input = stdin.readLineSync();
    if (input != null && validOperators.contains(input)) {
      return input;
    }
    print("Invalid operator. Please enter one of: +, -, *, /, %, ^");
  }
}