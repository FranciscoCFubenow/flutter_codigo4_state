import 'dart:async';

class _CounterService {
  int _counter = 0;

  StreamController<int> _streamController = StreamController();

  int get counter => _counter;

  Stream<int> get counterStream => _streamController.stream;

  addCounter() {
    print(_counter);
    _counter++;
    _streamController.add(counter);
  }

  closeStream() {
    _streamController.close();
  }
}

final counterService = _CounterService();
