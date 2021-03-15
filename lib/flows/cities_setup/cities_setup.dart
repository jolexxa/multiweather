import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cities_setup.freezed.dart';

enum CitiesSetupResult { canceled, complete, failed }

@freezed
abstract class CitiesSetup with _$CitiesSetup {
  const factory CitiesSetup({
    @required CitiesSetupResult result,
    @required String city,
  }) = _CitiesSetup;
}
