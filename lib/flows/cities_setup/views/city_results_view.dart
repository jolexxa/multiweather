library setup_cities_flow;

import 'package:flutter/material.dart';

class CityResultsView extends StatelessWidget {
  static MaterialPage<void> page() {
    return MaterialPage<void>(child: CityResultsView());
  }

  @override
  Widget build(BuildContext context) {
    return Text('Hello, city results view!');
  }
}
