import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo4_state/bloc/superheroe/superheroe_bloc.dart';
import 'package:flutter_codigo4_state/models/superheroe_model.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Registrar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Superheroe batmanman = Superheroe(
                  name: "Batmanman",
                  experience: 10,
                  powers: [
                    "Es rico",
                  ],
                );

                BlocProvider.of<SuperheroeBloc>(context)
                    .add(SuperheroeCreateEvent(superheroe: batmanman));
              },
              child: Text(
                "Añadir superheroe",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.deepPurpleAccent,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                "Actualizar la experiencia",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.deepPurpleAccent,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                "Añadir Poderes",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.deepPurpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}
