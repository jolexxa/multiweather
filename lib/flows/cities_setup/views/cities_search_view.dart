library setup_cities_flow;

import 'package:flutter/material.dart';

class CitiesSearchView extends StatelessWidget {
  static MaterialPage<void> page() {
    return MaterialPage<void>(child: CitiesSearchView());
  }

  @override
  Widget build(BuildContext context) {
    return Text('Hello, search cities view!');
  }
}
