part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorEvent {}

//Definir los eventos a utilizar

class AddNumber1 extends CalculatorEvent {
  int number1;
  AddNumber1({required this.number1});
}

class AddNumber2 extends CalculatorEvent {
  int number2;
  AddNumber2({required this.number2});
}

class CalculateResult extends CalculatorEvent {
  int result;
  CalculateResult({required this.result});
}

class Reset extends CalculatorEvent {
  int number1;
  int number2;
  int result;
  Reset({required this.number1, required this.number2, required this.result});
}

class EventoPrueba extends CalculatorEvent {}
