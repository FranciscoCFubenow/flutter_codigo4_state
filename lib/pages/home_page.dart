import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo4_state/bloc/superheroe/superheroe_bloc.dart';
import 'package:flutter_codigo4_state/models/superheroe_model.dart';
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegisterPage()));
          },
          backgroundColor: Colors.deepPurpleAccent,
          child: Icon(Icons.add),
        ),
        body: BlocBuilder<SuperheroeBloc, SuperheroeState>(
          builder: (context, state) {
            print("BUILDER STATEE::::: ${state.superheroeExist}");
            if (state.superheroeExist) {
              return InfoSuperheroeWidget(
                superheroe: state.superheroe!,
              );
            }
            return Center(
              child: Text("No hay un superheroe registrado"),
            );
          },
        ));
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
              title: Text("Años de Experiencia: ${superheroe.experience}"),
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
