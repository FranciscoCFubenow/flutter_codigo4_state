import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo4_state/models/superheroe_model.dart';
import 'package:flutter/material.dart';

part 'superheroe_state.dart';

class SuperheroeCubit extends Cubit<SuperheroeState> {
  SuperheroeCubit() : super(SuperheroeInit());

  // Implementar nuestros métodos

  // Crear superheroe
  void createSuperheroe(Superheroe superheroe) {
    // print(state);
    emit(SuperheroeCreate(superheroe: superheroe));
  }

  // Actualizar superheroe
  void updateExperience(int experience) {
    final currentState = state;
    if (currentState is SuperheroeCreate) {
      // currentState.superheroe.experience = experience;
      // emit(SuperheroeCreate(superheroe: currentState.superheroe));
      final Superheroe newSuperheroe =
          currentState.superheroe.copyWith(newExperience: 10000);
      // print(currentState.superheroe.experience);
      emit(SuperheroeCreate(superheroe: newSuperheroe));
    }
  }

  // Eliminar superheroe

  // Agregar poderes
  void addPower() {
    final currentState = state;
    if (currentState is SuperheroeCreate) {
      List<String> _newPowers = currentState.superheroe.powers;
      _newPowers.add("Power");
      final Superheroe newSuperheroe =
          currentState.superheroe.copyWith(newPowers: _newPowers);
      emit(SuperheroeCreate(superheroe: newSuperheroe));
    }
  }
}
