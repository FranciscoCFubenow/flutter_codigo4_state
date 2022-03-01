import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo4_state/bloc/calculator/calculator_bloc.dart';
import 'package:flutter_codigo4_state/bloc/superheroe/superheroe_bloc.dart';
import 'package:flutter_codigo4_state/pages/counter_page.dart';
import 'package:flutter_codigo4_state/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CalculatorBloc()),
        BlocProvider(create: (_) => SuperheroeBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Superhero',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
