library x_view_component;

import "view_model.dart";
import 'package:web_ui/web_ui.dart';

class ViewComponent extends WebComponent {
  List get numbers {
    print("CardsView:get numbers");
    return viewModel.numbers;
  }
}