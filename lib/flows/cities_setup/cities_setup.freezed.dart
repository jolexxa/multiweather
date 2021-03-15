// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cities_setup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CitiesSetupTearOff {
  const _$CitiesSetupTearOff();

// ignore: unused_element
  _CitiesSetup call(
      {@required CitiesSetupResult result, @required String city}) {
    return _CitiesSetup(
      result: result,
      city: city,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CitiesSetup = _$CitiesSetupTearOff();

/// @nodoc
mixin _$CitiesSetup {
  CitiesSetupResult get result;
  String get city;

  @JsonKey(ignore: true)
  $CitiesSetupCopyWith<CitiesSetup> get copyWith;
}

/// @nodoc
abstract class $CitiesSetupCopyWith<$Res> {
  factory $CitiesSetupCopyWith(
          CitiesSetup value, $Res Function(CitiesSetup) then) =
      _$CitiesSetupCopyWithImpl<$Res>;
  $Res call({CitiesSetupResult result, String city});
}

/// @nodoc
class _$CitiesSetupCopyWithImpl<$Res> implements $CitiesSetupCopyWith<$Res> {
  _$CitiesSetupCopyWithImpl(this._value, this._then);

  final CitiesSetup _value;
  // ignore: unused_field
  final $Res Function(CitiesSetup) _then;

  @override
  $Res call({
    Object result = freezed,
    Object city = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed ? _value.result : result as CitiesSetupResult,
      city: city == freezed ? _value.city : city as String,
    ));
  }
}

/// @nodoc
abstract class _$CitiesSetupCopyWith<$Res>
    implements $CitiesSetupCopyWith<$Res> {
  factory _$CitiesSetupCopyWith(
          _CitiesSetup value, $Res Function(_CitiesSetup) then) =
      __$CitiesSetupCopyWithImpl<$Res>;
  @override
  $Res call({CitiesSetupResult result, String city});
}

/// @nodoc
class __$CitiesSetupCopyWithImpl<$Res> extends _$CitiesSetupCopyWithImpl<$Res>
    implements _$CitiesSetupCopyWith<$Res> {
  __$CitiesSetupCopyWithImpl(
      _CitiesSetup _value, $Res Function(_CitiesSetup) _then)
      : super(_value, (v) => _then(v as _CitiesSetup));

  @override
  _CitiesSetup get _value => super._value as _CitiesSetup;

  @override
  $Res call({
    Object result = freezed,
    Object city = freezed,
  }) {
    return _then(_CitiesSetup(
      result: result == freezed ? _value.result : result as CitiesSetupResult,
      city: city == freezed ? _value.city : city as String,
    ));
  }
}

/// @nodoc
class _$_CitiesSetup with DiagnosticableTreeMixin implements _CitiesSetup {
  const _$_CitiesSetup({@required this.result, @required this.city})
      : assert(result != null),
        assert(city != null);

  @override
  final CitiesSetupResult result;
  @override
  final String city;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CitiesSetup(result: $result, city: $city)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CitiesSetup'))
      ..add(DiagnosticsProperty('result', result))
      ..add(DiagnosticsProperty('city', city));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CitiesSetup &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  _$CitiesSetupCopyWith<_CitiesSetup> get copyWith =>
      __$CitiesSetupCopyWithImpl<_CitiesSetup>(this, _$identity);
}

abstract class _CitiesSetup implements CitiesSetup {
  const factory _CitiesSetup(
      {@required CitiesSetupResult result,
      @required String city}) = _$_CitiesSetup;

  @override
  CitiesSetupResult get result;
  @override
  String get city;
  @override
  @JsonKey(ignore: true)
  _$CitiesSetupCopyWith<_CitiesSetup> get copyWith;
}
