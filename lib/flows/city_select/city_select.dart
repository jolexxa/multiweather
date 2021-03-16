import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_weather_api/meta_weather_api.dart';

part 'city_select.freezed.dart';

enum CitySelectResult { pending, canceled, complete, failed }

@freezed
abstract class CitySelect with _$CitySelect {
  const factory CitySelect({
    @Default('') String city,
    @Default([]) List<Location> citySearchResults,
    Location selectedLocation,
    @Default(CitySelectResult.pending) result,
  }) = _CitySelect;
}
