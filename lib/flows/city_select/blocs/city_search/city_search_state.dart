part of 'city_search_bloc.dart';

@freezed
abstract class CitySearchState with _$CitySearchState {
  const factory CitySearchState.loaded({
    @required List<Location> locationSearchResults,
  }) = _CitySearchLoaded;
  const factory CitySearchState.loading({
    @required List<Location> locationSearchResults,
  }) = _CitySearchLoading;
  const factory CitySearchState.failed({
    @required List<Location> locationSearchResults,
  }) = _CitySearchFailed;
}
