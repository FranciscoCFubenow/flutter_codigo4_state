import 'package:flutter/material.dart';
import 'package:flutter_codigo4_state/models/superheroe_model.dart';
import 'package:flutter_codigo4_state/providers/superheroe_provider.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SuperheroProvider _superheroProvider =
        Provider.of<SuperheroProvider>(context);

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
                Superheroe superman = Superheroe(
                  name: "Superman",
                  experiencia: 3,
                  powers: [
                    "Superfuerza",
                    "Vision laser",
                    "Volar",
                    "Vision X",
                  ],
                );
                _superheroProvider.createSuperhero(superman);
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
                _superheroProvider.updateExperience(10000);
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
              onPressed: () {},
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
                _superheroProvider.deleteSuperhero();
              },
              child: Text(
                "Eliminar Superheroe",
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
