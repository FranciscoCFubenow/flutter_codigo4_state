import 'package:flutter/material.dart';
import 'package:flutter_codigo4_state/pages/register_page.dart';

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
      body: SingleChildScrollView(
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
                title: Text("Nombre: "),
              ),
              ListTile(
                title: Text("Años de Experiencia: "),
              ),
              Divider(),
              Text(
                "Poderes",
                style: TextStyle(fontSize: 20),
              ),
              ListTile(
                title: Text("Poder 1"),
              ),
              ListTile(
                title: Text("Poder 2"),
              ),
              ListTile(
                title: Text("Poder 2"),
              ),
              ListTile(
                title: Text("Poder 3"),
              ),
              ListTile(
                title: Text("Poder 4"),
              ),
              ListTile(
                title: Text("Poder 5"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
