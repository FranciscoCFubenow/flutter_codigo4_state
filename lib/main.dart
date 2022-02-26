import 'package:flutter/material.dart';
import 'package:flutter_codigo4_state/pages/counter_page.dart';
import 'package:flutter_codigo4_state/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Superhero',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: CounterPage(),
    );
  }
}
