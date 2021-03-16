// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'city_select.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CitySelectTearOff {
  const _$CitySelectTearOff();

// ignore: unused_element
  _CitySelect call(
      {String city = '',
      List<Location> citySearchResults = const [],
      Location selectedLocation,
      dynamic result = CitySelectResult.pending}) {
    return _CitySelect(
      city: city,
      citySearchResults: citySearchResults,
      selectedLocation: selectedLocation,
      result: result,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CitySelect = _$CitySelectTearOff();

/// @nodoc
mixin _$CitySelect {
  String get city;
  List<Location> get citySearchResults;
  Location get selectedLocation;
  dynamic get result;

  @JsonKey(ignore: true)
  $CitySelectCopyWith<CitySelect> get copyWith;
}

/// @nodoc
abstract class $CitySelectCopyWith<$Res> {
  factory $CitySelectCopyWith(
          CitySelect value, $Res Function(CitySelect) then) =
      _$CitySelectCopyWithImpl<$Res>;
  $Res call(
      {String city,
      List<Location> citySearchResults,
      Location selectedLocation,
      dynamic result});
}

/// @nodoc
class _$CitySelectCopyWithImpl<$Res> implements $CitySelectCopyWith<$Res> {
  _$CitySelectCopyWithImpl(this._value, this._then);

  final CitySelect _value;
  // ignore: unused_field
  final $Res Function(CitySelect) _then;

  @override
  $Res call({
    Object city = freezed,
    Object citySearchResults = freezed,
    Object selectedLocation = freezed,
    Object result = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed ? _value.city : city as String,
      citySearchResults: citySearchResults == freezed
          ? _value.citySearchResults
          : citySearchResults as List<Location>,
      selectedLocation: selectedLocation == freezed
          ? _value.selectedLocation
          : selectedLocation as Location,
      result: result == freezed ? _value.result : result as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$CitySelectCopyWith<$Res> implements $CitySelectCopyWith<$Res> {
  factory _$CitySelectCopyWith(
          _CitySelect value, $Res Function(_CitySelect) then) =
      __$CitySelectCopyWithImpl<$Res>;
  @override
  $Res call(
      {String city,
      List<Location> citySearchResults,
      Location selectedLocation,
      dynamic result});
}

/// @nodoc
class __$CitySelectCopyWithImpl<$Res> extends _$CitySelectCopyWithImpl<$Res>
    implements _$CitySelectCopyWith<$Res> {
  __$CitySelectCopyWithImpl(
      _CitySelect _value, $Res Function(_CitySelect) _then)
      : super(_value, (v) => _then(v as _CitySelect));

  @override
  _CitySelect get _value => super._value as _CitySelect;

  @override
  $Res call({
    Object city = freezed,
    Object citySearchResults = freezed,
    Object selectedLocation = freezed,
    Object result = freezed,
  }) {
    return _then(_CitySelect(
      city: city == freezed ? _value.city : city as String,
      citySearchResults: citySearchResults == freezed
          ? _value.citySearchResults
          : citySearchResults as List<Location>,
      selectedLocation: selectedLocation == freezed
          ? _value.selectedLocation
          : selectedLocation as Location,
      result: result == freezed ? _value.result : result,
    ));
  }
}

/// @nodoc
class _$_CitySelect with DiagnosticableTreeMixin implements _CitySelect {
  const _$_CitySelect(
      {this.city = '',
      this.citySearchResults = const [],
      this.selectedLocation,
      this.result = CitySelectResult.pending})
      : assert(city != null),
        assert(citySearchResults != null),
        assert(result != null);

  @JsonKey(defaultValue: '')
  @override
  final String city;
  @JsonKey(defaultValue: const [])
  @override
  final List<Location> citySearchResults;
  @override
  final Location selectedLocation;
  @JsonKey(defaultValue: CitySelectResult.pending)
  @override
  final dynamic result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CitySelect(city: $city, citySearchResults: $citySearchResults, selectedLocation: $selectedLocation, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CitySelect'))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('citySearchResults', citySearchResults))
      ..add(DiagnosticsProperty('selectedLocation', selectedLocation))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CitySelect &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.citySearchResults, citySearchResults) ||
                const DeepCollectionEquality()
                    .equals(other.citySearchResults, citySearchResults)) &&
            (identical(other.selectedLocation, selectedLocation) ||
                const DeepCollectionEquality()
                    .equals(other.selectedLocation, selectedLocation)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(citySearchResults) ^
      const DeepCollectionEquality().hash(selectedLocation) ^
      const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$CitySelectCopyWith<_CitySelect> get copyWith =>
      __$CitySelectCopyWithImpl<_CitySelect>(this, _$identity);
}

abstract class _CitySelect implements CitySelect {
  const factory _CitySelect(
      {String city,
      List<Location> citySearchResults,
      Location selectedLocation,
      dynamic result}) = _$_CitySelect;

  @override
  String get city;
  @override
  List<Location> get citySearchResults;
  @override
  Location get selectedLocation;
  @override
  dynamic get result;
  @override
  @JsonKey(ignore: true)
  _$CitySelectCopyWith<_CitySelect> get copyWith;
}
