import 'package:flutter/foundation.dart';
import 'package:flutter_codigo4_state/models/superheroe_model.dart';

class SuperheroProvider with ChangeNotifier {
  Superheroe? _superheroe;

  Superheroe get superheroe => _superheroe!;

  createSuperhero(Superheroe superheroe) {
    _superheroe = superheroe;
    notifyListeners();
  }
}
