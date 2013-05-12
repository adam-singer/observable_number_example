library model;

import "dart:async";
import "dart:math";

class RandomNumbers {
  StreamController<int> controller;
  Timer timer;
  Random random;

  _populateStream(t) {
    var n = random.nextInt(25) + 10;
    print("RandomNumbers:_populateStream: $n");
    controller.add(random.nextInt(25) + 10);
  }

  RandomNumbers() {
    random = new Random();
    controller = new StreamController<int>();
    timer = new Timer.periodic(new Duration(seconds: 1), _populateStream);
  }
}

class Model {
  RandomNumbers randomNumbers;
  Model() {
    randomNumbers = new RandomNumbers();
  }
}

Model _model;
Model get model {
  if (_model == null) {
    _model = new Model();
  }

  return _model;
}
