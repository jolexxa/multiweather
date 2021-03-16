import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:meta_weather_api/meta_weather_api.dart';
import 'package:multiweather/flows/city_select/city_select_flow.dart';
import 'package:weather_repository/weather_repository.dart';
import 'package:multiweather/flows/city_select/blocs/blocs.dart';
import 'package:multiweather/app/locator.dart';
import 'package:multiweather/widgets/widgets.dart';

class CityResultsView extends StatefulWidget {
  static MaterialPage<void> page() {
    return MaterialPage<void>(child: CityResultsView());
  }

  @override
  _CityResultsViewState createState() => _CityResultsViewState();
}

class _CityResultsViewState extends State<CityResultsView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final flow = context.flow<CitySelect>();
    return BlocProvider(
      create: (context) => CitySearchBloc(
        weatherRepo: getIt<WeatherRepository>(),
      )..add(
          CitySearchEvent.load(
            city: flow.state.city,
          ),
        ),
      child: BlocConsumer<CitySearchBloc, CitySearchState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            failed: (state) {
              // Failed to fetch results...for now we just cancel the flow.
              flow.complete(
                (state) => state.copyWith(result: CitySelectResult.failed),
              );
            },
          );
        },
        builder: (context, state) {
          return AppView(
            title: Text('🏠 Search Results'),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                _CitySearchResults(
                  state: state,
                  // User tapped a city--complete the flow successfully.
                  onSelect: (location) => flow.complete(
                    (state) => state.copyWith(
                      selectedLocation: location,
                      result: CitySelectResult.complete,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _CitySearchResults extends StatelessWidget {
  _CitySearchResults({
    Key key,
    @required this.state,
    @required this.onSelect,
  }) : super(key: key);

  final CitySearchState state;
  final void Function(Location location) onSelect;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  bool get noResults => state.locationSearchResults?.isEmpty ?? false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) => AnimatedList(
          key: _listKey,
          initialItemCount: max(1, state.locationSearchResults.length),
          itemBuilder: (context, index, animation) {
            if (index == 0 && noResults) {
              return _defaultChild(context, constraints);
            }
            return _CitySearchResult(
              key: ValueKey(state.locationSearchResults[index].woeid),
              location: state.locationSearchResults[index],
              onSelect: (location) => onSelect(location),
            );
          },
        ),
      ),
    );
  }

  Widget _defaultChild(BuildContext context, BoxConstraints constraints) {
    final theme = Theme.of(context);
    final loader = SpinKitChasingDots(color: theme.primaryColor);
    return Container(
      padding: const EdgeInsets.all(16.0),
      constraints: BoxConstraints(
        minHeight: constraints.maxHeight,
      ),
      child: Center(
        child: loader,
      ),
    );
  }
}

class _CitySearchResult extends StatelessWidget {
  _CitySearchResult({
    Key key,
    @required this.location,
    @required this.onSelect,
  }) : super(key: key);

  final Location location;
  final void Function(Location location) onSelect;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: InkWell(
        onTap: () {
          onSelect(location);
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Column(
              children: [
                ListTile(
                  title: Text(location.title),
                  leading: locationIcon,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Icon get locationIcon {
    switch (location.locationType) {
      case LocationType.continent:
        return Icon(FontAwesome.globe);
      case LocationType.country:
        return Icon(FontAwesome.flag);
      case LocationType.province:
        return Icon(Foundation.crown);
      case LocationType.region:
        return Icon(MaterialCommunityIcons.star_four_points);
      case LocationType.state:
        return Icon(MaterialCommunityIcons.star_circle);
      case LocationType.city:
      default:
        return Icon(Icons.location_city);
    }
  }
}
