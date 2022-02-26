import 'package:flutter/material.dart';
import 'package:flutter_codigo4_state/models/superheroe_model.dart';
import 'package:flutter_codigo4_state/services/superheroe_service.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: StreamBuilder(
          stream: SuperheroeService().superheroeStream,
          builder: (BuildContext context, AsyncSnapshot snap) {
            if (snap.hasData) {
              Superheroe superheroe = snap.data;
              return Text("Registrar::: ${superheroe.name}");
            }
            return Text("Registrar");
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Superheroe batman = Superheroe(
                  name: "Batman",
                  experiencia: 20,
                  powers: [
                    "Inteligencia",
                    "Artes Marciales",
                    "Millonario",
                  ],
                );
                SuperheroeService().createSuperhero(batman);
                // superheroeService.createSuperhero(batman);
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
                SuperheroeService().updateExperience(110);
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
                SuperheroeService().addPower("X-Ray Vision");
              },
              child: Text(
                "Añadir poderes",
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
