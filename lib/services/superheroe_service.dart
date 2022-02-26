import 'dart:async';

import 'package:flutter_codigo4_state/models/superheroe_model.dart';

class SuperheroeService {
  SuperheroeService._();
  static final SuperheroeService _instance = SuperheroeService._();

  factory SuperheroeService() {
    return _instance;
  }

  Superheroe? _superheroe;

  StreamController<Superheroe> _superheroeStream = StreamController.broadcast();

  Stream<Superheroe> get superheroeStream => _superheroeStream.stream;

  Superheroe get superheroe => _superheroe!;

  createSuperhero(Superheroe superheroe) {
    _superheroe = superheroe;
    _superheroeStream.add(_superheroe!);
  }

  updateExperience(int experience) {
    _superheroe!.experiencia = experience;
    _superheroeStream.add(_superheroe!);
  }

  addPower(String newPower) {
    _superheroe!.powers.add(newPower);
    _superheroeStream.add(_superheroe!);
  }

  closeStream() {
    _superheroeStream.close();
  }
}

// final superheroeService = _SuperheroeService();
