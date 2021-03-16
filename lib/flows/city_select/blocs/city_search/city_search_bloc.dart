import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_weather_api/meta_weather_api.dart';
import 'package:weather_repository/weather_repository.dart';

part 'city_search_event.dart';
part 'city_search_state.dart';
part 'city_search_bloc.freezed.dart';

class CitySearchBloc extends Bloc<CitySearchEvent, CitySearchState> {
  CitySearchBloc({@required this.weatherRepo})
      : super(
          CitySearchState.loaded(locationSearchResults: []),
        );

  final WeatherRepository weatherRepo;

  @override
  Stream<CitySearchState> mapEventToState(
    CitySearchEvent event,
  ) async* {
    final locationSearchResults = state.locationSearchResults;
    yield* event.map(load: (state) async* {
      try {
        yield CitySearchState.loading(
          locationSearchResults: locationSearchResults,
        );
        final locations = await weatherRepo.locationSearch(state.city);
        yield CitySearchState.loaded(locationSearchResults: locations);
      } catch (e) {
        yield CitySearchState.failed(
          locationSearchResults: locationSearchResults,
        );
      }
    });
  }
}
