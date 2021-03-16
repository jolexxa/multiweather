part of 'city_search_bloc.dart';

@freezed
abstract class CitySearchEvent with _$CitySearchEvent {
  const factory CitySearchEvent.load({@required String city}) = CitySearchLoad;
}
