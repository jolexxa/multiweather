import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:multiweather/flows/cities_setup/views/views.dart';

import 'city_select.dart';
export 'city_select.dart';

class CitySelectFlow extends StatelessWidget {
  static Route<CitySelect> route({@required CitySelect initialState}) {
    return MaterialPageRoute(
      builder: (_) => CitySelectFlow(
        initialState: initialState,
      ),
    );
  }

  CitySelectFlow({Key key, @required this.initialState}) : super(key: key);

  final CitySelect initialState;

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<CitySelect>(
      state: initialState,
      onGeneratePages: onGeneratePages,
    );
  }

  static List<Page> onGeneratePages(CitySelect state, List<Page> pages) {
    return [
      CitySearchView.page(),
      if (state.city != null &&
          state.citySearchResults != null &&
          state.citySearchResults.isNotEmpty)
        CityResultsView.page(),
    ];
  }
}
