import 'package:flutter/material.dart';
import 'package:flutter_codigo4_state/models/superheroe_model.dart';
import 'package:flutter_codigo4_state/pages/register_page.dart';
import 'package:flutter_codigo4_state/services/superheroe_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: StreamBuilder(
        stream: SuperheroeService().superheroeStream,
        builder: (BuildContext context, AsyncSnapshot snap) {
          if (snap.hasData) {
            Superheroe superheroe = snap.data;
            print("xxxxxxxxxx Superheroe ${superheroe.name}");
            return InfoSuperheroeWidget(
              superheroe: superheroe,
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class InfoSuperheroeWidget extends StatelessWidget {
  Superheroe superheroe;
  InfoSuperheroeWidget({required this.superheroe});

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
            ...superheroe.powers.map(
              (e) => ListTile(
                title: Text(e),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
