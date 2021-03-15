library setup_cities_flow;

import 'package:flutter/material.dart';

class CitiesResultsView extends StatelessWidget {
  static MaterialPage<void> page() {
    return MaterialPage<void>(child: CitiesResultsView());
  }

  @override
  Widget build(BuildContext context) {
    return Text('Hello, cities results view!');
  }
}
