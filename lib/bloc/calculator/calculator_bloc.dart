import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';

part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorState()) {
    on<AddNumber1>(
      (event, emit) {
        emit(state.copyWith(number1: state.number1 + 1));
        // emit(CalculatorState())
      },
    );

    on<AddNumber2>(
      (event, emit) {
        emit(state.copyWith(number2: state.number2 + 1));
        // emit(CalculatorState())
      },
    );

    on<CalculateResult>(
      (event, emit) {
        emit(state.copyWith(result: state.number1 + state.number2));
        // emit(CalculatorState())
      },
    );

    on<Reset>(
      (event, emit) {
        emit(state.copyWith(number1: 0, number2: 0, result: 0));
        // emit(CalculatorState())
      },
    );

    on<EventoPrueba>(
      (event, emit) {},
    );
  }
}
