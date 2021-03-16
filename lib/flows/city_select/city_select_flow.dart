import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';
import 'city_select.dart';

export 'city_select.dart';

class CitySelectFlow extends StatelessWidget {
  static Route<CitySelect> route(
      {@required FlowController<CitySelect> controller}) {
    return MaterialPageRoute(
      builder: (_) => CitySelectFlow(
        controller: controller,
      ),
    );
  }

  CitySelectFlow({Key key, @required this.controller}) : super(key: key);

  final FlowController<CitySelect> controller;

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<CitySelect>(
      controller: controller,
      onGeneratePages: onGeneratePages,
    );
  }

  static List<Page> onGeneratePages(CitySelect state, List<Page> pages) {
    return [
      CitySearchView.page(),
      if (state.city != null && state.city.isNotEmpty) CityResultsView.page(),
    ];
  }
}
