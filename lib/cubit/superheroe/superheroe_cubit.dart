import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo4_state/models/superheroe_model.dart';
import 'package:flutter/material.dart';

part 'superheroe_state.dart';

class SuperheroeCubit extends Cubit<SuperheroeState> {
  SuperheroeCubit() : super(SuperheroeInit());

  // Implementar nuestros métodos

  // Crear superheroe
  void createSuperheroe(Superheroe superheroe) {
    emit(SuperheroeCreate(superheroe: superheroe));
  }

  // Actualizar superheroe

  // Eliminar superheroe

  // Agregar poderes
}
