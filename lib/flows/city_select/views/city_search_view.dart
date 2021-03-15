library setup_cities_flow;

import 'package:flutter/material.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:multiweather/flows/flows.dart';
import 'package:multiweather/widgets/widgets.dart';

class CitySearchView extends StatelessWidget {
  static MaterialPage<void> page() {
    return MaterialPage<void>(child: CitySearchView());
  }

  @override
  Widget build(BuildContext context) {
    final flow = context.flow<CitySelect>();
    return AppView(
      leading: BackButton(
        onPressed: () => flow.complete(
          // First page of a flow must provide its own back button, since it
          // has its own navigation stack.
          //
          // Simply cancel the existing flow.
          (citySelectState) => citySelectState.copyWith(
            result: CitySelectResult.canceled,
          ),
        ),
      ),
      child: Text('Hello'),
    );
  }
}
