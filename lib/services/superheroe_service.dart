import 'dart:async';

import 'package:flutter_codigo4_state/models/superheroe_model.dart';

class SuperheroeService {
  Superheroe? _superheroe;

  StreamController<Superheroe> _superheroeStream = StreamController();
}
