part of 'calculator_bloc.dart';

// @immutable
// abstract class CalculatorState {}
//
// class CalculatorInitial extends CalculatorState {
//
// }

class CalculatorState {
  final int result;
  final int number1;
  final int number2;

  CalculatorState({
    this.result = 0,
    this.number1 = 0,
    this.number2 = 0,
  });

  CalculatorState copyWith({int? result, int? number1, int? number2}) {
    return CalculatorState(
      result: result ?? this.result,
      number1: number1 ?? this.number1,
      number2: number2 ?? this.number2,
    );
  }
}
