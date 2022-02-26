import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_codigo4_state/services/counter_service.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
              stream: counterService.counterStream,
              builder: (BuildContext context, AsyncSnapshot snap) {
                if (snap.hasData) {
                  return Text(
                    snap.data.toString(),
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }
                return Text(
                  "0",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                counterService.addCounter();
              },
              child: Text(
                "Counter",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
