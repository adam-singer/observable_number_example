library view_model;

import "model.dart";
import 'package:web_ui/web_ui.dart';

@observable
class MainView {
  List get numbers => _numbers;
  List _numbers;

  _cardsListener(data) {
    _numbers.add(data);
    print("MainView:_cardsListener: $_numbers");
  }

  MainView() {
    _numbers = toObservable([]);
    model.randomNumbers.controller.stream.listen(_cardsListener);
  }
}

final MainView viewModel = new MainView();