import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:multiweather/flows/cities_setup/views/views.dart';

import 'cities_setup.dart';

class CitiesSetupFlow extends StatelessWidget {
  CitiesSetupFlow({Key key, @required this.initialState}) : super(key: key);

  final CitiesSetup initialState;

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<CitiesSetup>(
      state: initialState,
      onGeneratePages: onGeneratePages,
    );
  }

  static List<Page> onGeneratePages(CitiesSetup state, List<Page> pages) {
    return [
      CitiesSearchView.page(),
      if (state.city != null) CitiesResultsView.page(),
    ];
  }
}
