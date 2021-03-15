library setup_cities_flow;

import 'package:flutter/material.dart';

class CitySearchView extends StatelessWidget {
  static MaterialPage<void> page() {
    return MaterialPage<void>(child: CitySearchView());
  }

  @override
  Widget build(BuildContext context) {
    return Text('Hello, city search view!');
  }
}
