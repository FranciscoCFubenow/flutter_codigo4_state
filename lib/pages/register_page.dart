import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo4_state/cubit/superheroe/superheroe_cubit.dart';
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
                Superheroe superheroe = Superheroe(
                  name: "Batman",
                  experience: 2,
                  powers: [
                    "Es rico",
                  ],
                );
                context.read<SuperheroeCubit>().createSuperheroe(superheroe);
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
              onPressed: () {
                context.read<SuperheroeCubit>().updateExperience(100);
              },
              child: Text(
                "Actualizar la experiencia",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.deepPurpleAccent,
            ),
            MaterialButton(
              onPressed: () {
                context.read<SuperheroeCubit>().addPower();
              },
              child: Text(
                "Añadir Poderes",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.deepPurpleAccent,
            ),
            MaterialButton(
              onPressed: () {
                context.read<SuperheroeCubit>().deleteSuperheroe();
              },
              child: Text(
                "Eliminar superheroe",
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
