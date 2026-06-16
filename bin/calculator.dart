// Module 1 – Activity 4 – Calculator
//
// Read two numbers from the user, then display their:
//   - sum
//   - difference  (1st number - 2nd number)
//   - product
//   - quotient    (1st number / 2nd number)
//   - average     of the two numbers
//
// Read the input in THIS order:  1) first number   2) second number
//
// Concepts to research (see the Dart cheat sheet): reading input from the
// user, converting text into a number, arithmetic operators, and printing.

import 'dart:io';

void main() {
  
  // TODO: write your solution here
  stdout.write("Enter the first number: ");
  double firstNumber = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the second number: ");
  double secondNumber = double.parse(stdin.readLineSync()!);

  double sum = firstNumber + secondNumber;
  double difference = firstNumber - secondNumber;
  double product = firstNumber * secondNumber;
  double quotient = firstNumber / secondNumber;
  double average = (firstNumber + secondNumber) / 2;

  print("Sum: $sum");
  print("Difference: $difference");
  print("Product: $product");
  print("Quotient: $quotient");
  print("Average: $average");
}
