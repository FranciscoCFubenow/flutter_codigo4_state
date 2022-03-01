import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_codigo4_state/models/superheroe_model.dart';
import 'package:meta/meta.dart';

part 'superheroe_event.dart';
part 'superheroe_state.dart';

class SuperheroeBloc extends Bloc<SuperheroeEvent, SuperheroeState> {
  SuperheroeBloc() : super(SuperheroeState()) {
    on<SuperheroeCreateEvent>((event, emit) {
      emit(SuperheroeState(superheroe: event.superheroe));
    });

    on<SuperheroeUpdateExperienceEvent>((event, emit) {
      emit(SuperheroeState(
          superheroe: state.superheroe!.copyWith(exp: event.experience)));
    });

    on<SuperheroeAddPowerEvent>((event, emit) {
      // List<String> newPowers = state.superheroe!.powers;
      // newPowers.add(event.power);
      // emit(SuperheroeState(
      //      superheroe: state.superheroe!.copyWith(powers: newPowers)));

      // o intentar

      emit(SuperheroeState(
          superheroe: state.superheroe!.copyWith(
        powers: [...state.superheroe!.powers, event.power],
      )));
    });

    on<SuperheroeDeleteEvent>(
      (event, emit) {
        emit(SuperheroeState());
      },
    );
  }
}
