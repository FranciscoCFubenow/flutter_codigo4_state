import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo4_state/bloc/calculator/calculator_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example"),
      ),
      body: BlocBuilder<CalculatorBloc, CalculatorState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.number1.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  MaterialButton(
                    color: Colors.deepPurpleAccent,
                    child: Text(
                      "Add number 1",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      BlocProvider.of<CalculatorBloc>(context)
                          .add(AddNumber1(number1: 1));
                      print("numero1: ${state.number1}");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.number2.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  MaterialButton(
                    color: Colors.deepPurpleAccent,
                    child: Text(
                      "Add number 2",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      BlocProvider.of<CalculatorBloc>(context)
                          .add(AddNumber2(number2: 1));
                      print("numero2: ${state.number2}");
                    },
                  ),
                ],
              ),
              Divider(),
              Text(
                "Result::: ${state.result}",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              MaterialButton(
                color: Colors.deepPurpleAccent,
                child: Text(
                  "Calculate",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  BlocProvider.of<CalculatorBloc>(context).add(
                      CalculateResult(result: state.number1 + state.number2));
                  print("resultado: ${state.result}");
                },
              ),
              MaterialButton(
                color: Colors.deepPurpleAccent,
                child: Text(
                  "Eliminar",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  BlocProvider.of<CalculatorBloc>(context)
                      .add(Reset(number1: 0, number2: 0, result: 0));
                  print("resultado: ${state.result}");
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
