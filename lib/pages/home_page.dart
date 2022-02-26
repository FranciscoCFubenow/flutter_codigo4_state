import 'package:flutter/material.dart';
import 'package:flutter_codigo4_state/models/superheroe_model.dart';
import 'package:flutter_codigo4_state/pages/register_page.dart';
import 'package:flutter_codigo4_state/providers/superheroe_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SuperheroProvider superheroProvider =
        Provider.of<SuperheroProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Superhero"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RegisterPage()));
        },
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(Icons.add),
      ),
      body: superheroProvider.checkSuperhero
          ? InfoSuperheroWidget(
              superheroe: superheroProvider.superheroe,
            )
          : Center(
              child: Text("No hay un superheroe registrado."),
            ),
    );
  }
}

class InfoSuperheroWidget extends StatelessWidget {
  Superheroe superheroe;
  InfoSuperheroWidget({required this.superheroe});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              "Información general",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Nombre: ${superheroe.name}"),
            ),
            ListTile(
              title: Text("Años de Experiencia: ${superheroe.experiencia}"),
            ),
            Divider(),
            Text(
              "Poderes",
              style: TextStyle(fontSize: 20),
            ),
            ...superheroe.powers
                .map(
                  (e) => ListTile(
                    title: Text(e),
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
