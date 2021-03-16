// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'city_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CitySearchEventTearOff {
  const _$CitySearchEventTearOff();

// ignore: unused_element
  CitySearchLoad load({@required String city}) {
    return CitySearchLoad(
      city: city,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CitySearchEvent = _$CitySearchEventTearOff();

/// @nodoc
mixin _$CitySearchEvent {
  String get city;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult load(String city),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult load(String city),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult load(CitySearchLoad value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult load(CitySearchLoad value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $CitySearchEventCopyWith<CitySearchEvent> get copyWith;
}

/// @nodoc
abstract class $CitySearchEventCopyWith<$Res> {
  factory $CitySearchEventCopyWith(
          CitySearchEvent value, $Res Function(CitySearchEvent) then) =
      _$CitySearchEventCopyWithImpl<$Res>;
  $Res call({String city});
}

/// @nodoc
class _$CitySearchEventCopyWithImpl<$Res>
    implements $CitySearchEventCopyWith<$Res> {
  _$CitySearchEventCopyWithImpl(this._value, this._then);

  final CitySearchEvent _value;
  // ignore: unused_field
  final $Res Function(CitySearchEvent) _then;

  @override
  $Res call({
    Object city = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed ? _value.city : city as String,
    ));
  }
}

/// @nodoc
abstract class $CitySearchLoadCopyWith<$Res>
    implements $CitySearchEventCopyWith<$Res> {
  factory $CitySearchLoadCopyWith(
          CitySearchLoad value, $Res Function(CitySearchLoad) then) =
      _$CitySearchLoadCopyWithImpl<$Res>;
  @override
  $Res call({String city});
}

/// @nodoc
class _$CitySearchLoadCopyWithImpl<$Res>
    extends _$CitySearchEventCopyWithImpl<$Res>
    implements $CitySearchLoadCopyWith<$Res> {
  _$CitySearchLoadCopyWithImpl(
      CitySearchLoad _value, $Res Function(CitySearchLoad) _then)
      : super(_value, (v) => _then(v as CitySearchLoad));

  @override
  CitySearchLoad get _value => super._value as CitySearchLoad;

  @override
  $Res call({
    Object city = freezed,
  }) {
    return _then(CitySearchLoad(
      city: city == freezed ? _value.city : city as String,
    ));
  }
}

/// @nodoc
class _$CitySearchLoad implements CitySearchLoad {
  const _$CitySearchLoad({@required this.city}) : assert(city != null);

  @override
  final String city;

  @override
  String toString() {
    return 'CitySearchEvent.load(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CitySearchLoad &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  $CitySearchLoadCopyWith<CitySearchLoad> get copyWith =>
      _$CitySearchLoadCopyWithImpl<CitySearchLoad>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult load(String city),
  }) {
    assert(load != null);
    return load(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult load(String city),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult load(CitySearchLoad value),
  }) {
    assert(load != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult load(CitySearchLoad value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class CitySearchLoad implements CitySearchEvent {
  const factory CitySearchLoad({@required String city}) = _$CitySearchLoad;

  @override
  String get city;
  @override
  @JsonKey(ignore: true)
  $CitySearchLoadCopyWith<CitySearchLoad> get copyWith;
}

/// @nodoc
class _$CitySearchStateTearOff {
  const _$CitySearchStateTearOff();

// ignore: unused_element
  _CitySearchLoaded loaded({@required List<Location> locationSearchResults}) {
    return _CitySearchLoaded(
      locationSearchResults: locationSearchResults,
    );
  }

// ignore: unused_element
  _CitySearchLoading loading({@required List<Location> locationSearchResults}) {
    return _CitySearchLoading(
      locationSearchResults: locationSearchResults,
    );
  }

// ignore: unused_element
  _CitySearchFailed failed({@required List<Location> locationSearchResults}) {
    return _CitySearchFailed(
      locationSearchResults: locationSearchResults,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CitySearchState = _$CitySearchStateTearOff();

/// @nodoc
mixin _$CitySearchState {
  List<Location> get locationSearchResults;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loaded(List<Location> locationSearchResults),
    @required TResult loading(List<Location> locationSearchResults),
    @required TResult failed(List<Location> locationSearchResults),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loaded(List<Location> locationSearchResults),
    TResult loading(List<Location> locationSearchResults),
    TResult failed(List<Location> locationSearchResults),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loaded(_CitySearchLoaded value),
    @required TResult loading(_CitySearchLoading value),
    @required TResult failed(_CitySearchFailed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loaded(_CitySearchLoaded value),
    TResult loading(_CitySearchLoading value),
    TResult failed(_CitySearchFailed value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $CitySearchStateCopyWith<CitySearchState> get copyWith;
}

/// @nodoc
abstract class $CitySearchStateCopyWith<$Res> {
  factory $CitySearchStateCopyWith(
          CitySearchState value, $Res Function(CitySearchState) then) =
      _$CitySearchStateCopyWithImpl<$Res>;
  $Res call({List<Location> locationSearchResults});
}

/// @nodoc
class _$CitySearchStateCopyWithImpl<$Res>
    implements $CitySearchStateCopyWith<$Res> {
  _$CitySearchStateCopyWithImpl(this._value, this._then);

  final CitySearchState _value;
  // ignore: unused_field
  final $Res Function(CitySearchState) _then;

  @override
  $Res call({
    Object locationSearchResults = freezed,
  }) {
    return _then(_value.copyWith(
      locationSearchResults: locationSearchResults == freezed
          ? _value.locationSearchResults
          : locationSearchResults as List<Location>,
    ));
  }
}

/// @nodoc
abstract class _$CitySearchLoadedCopyWith<$Res>
    implements $CitySearchStateCopyWith<$Res> {
  factory _$CitySearchLoadedCopyWith(
          _CitySearchLoaded value, $Res Function(_CitySearchLoaded) then) =
      __$CitySearchLoadedCopyWithImpl<$Res>;
  @override
  $Res call({List<Location> locationSearchResults});
}

/// @nodoc
class __$CitySearchLoadedCopyWithImpl<$Res>
    extends _$CitySearchStateCopyWithImpl<$Res>
    implements _$CitySearchLoadedCopyWith<$Res> {
  __$CitySearchLoadedCopyWithImpl(
      _CitySearchLoaded _value, $Res Function(_CitySearchLoaded) _then)
      : super(_value, (v) => _then(v as _CitySearchLoaded));

  @override
  _CitySearchLoaded get _value => super._value as _CitySearchLoaded;

  @override
  $Res call({
    Object locationSearchResults = freezed,
  }) {
    return _then(_CitySearchLoaded(
      locationSearchResults: locationSearchResults == freezed
          ? _value.locationSearchResults
          : locationSearchResults as List<Location>,
    ));
  }
}

/// @nodoc
class _$_CitySearchLoaded implements _CitySearchLoaded {
  const _$_CitySearchLoaded({@required this.locationSearchResults})
      : assert(locationSearchResults != null);

  @override
  final List<Location> locationSearchResults;

  @override
  String toString() {
    return 'CitySearchState.loaded(locationSearchResults: $locationSearchResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CitySearchLoaded &&
            (identical(other.locationSearchResults, locationSearchResults) ||
                const DeepCollectionEquality().equals(
                    other.locationSearchResults, locationSearchResults)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locationSearchResults);

  @JsonKey(ignore: true)
  @override
  _$CitySearchLoadedCopyWith<_CitySearchLoaded> get copyWith =>
      __$CitySearchLoadedCopyWithImpl<_CitySearchLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loaded(List<Location> locationSearchResults),
    @required TResult loading(List<Location> locationSearchResults),
    @required TResult failed(List<Location> locationSearchResults),
  }) {
    assert(loaded != null);
    assert(loading != null);
    assert(failed != null);
    return loaded(locationSearchResults);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loaded(List<Location> locationSearchResults),
    TResult loading(List<Location> locationSearchResults),
    TResult failed(List<Location> locationSearchResults),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(locationSearchResults);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loaded(_CitySearchLoaded value),
    @required TResult loading(_CitySearchLoading value),
    @required TResult failed(_CitySearchFailed value),
  }) {
    assert(loaded != null);
    assert(loading != null);
    assert(failed != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loaded(_CitySearchLoaded value),
    TResult loading(_CitySearchLoading value),
    TResult failed(_CitySearchFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CitySearchLoaded implements CitySearchState {
  const factory _CitySearchLoaded(
      {@required List<Location> locationSearchResults}) = _$_CitySearchLoaded;

  @override
  List<Location> get locationSearchResults;
  @override
  @JsonKey(ignore: true)
  _$CitySearchLoadedCopyWith<_CitySearchLoaded> get copyWith;
}

/// @nodoc
abstract class _$CitySearchLoadingCopyWith<$Res>
    implements $CitySearchStateCopyWith<$Res> {
  factory _$CitySearchLoadingCopyWith(
          _CitySearchLoading value, $Res Function(_CitySearchLoading) then) =
      __$CitySearchLoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<Location> locationSearchResults});
}

/// @nodoc
class __$CitySearchLoadingCopyWithImpl<$Res>
    extends _$CitySearchStateCopyWithImpl<$Res>
    implements _$CitySearchLoadingCopyWith<$Res> {
  __$CitySearchLoadingCopyWithImpl(
      _CitySearchLoading _value, $Res Function(_CitySearchLoading) _then)
      : super(_value, (v) => _then(v as _CitySearchLoading));

  @override
  _CitySearchLoading get _value => super._value as _CitySearchLoading;

  @override
  $Res call({
    Object locationSearchResults = freezed,
  }) {
    return _then(_CitySearchLoading(
      locationSearchResults: locationSearchResults == freezed
          ? _value.locationSearchResults
          : locationSearchResults as List<Location>,
    ));
  }
}

/// @nodoc
class _$_CitySearchLoading implements _CitySearchLoading {
  const _$_CitySearchLoading({@required this.locationSearchResults})
      : assert(locationSearchResults != null);

  @override
  final List<Location> locationSearchResults;

  @override
  String toString() {
    return 'CitySearchState.loading(locationSearchResults: $locationSearchResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CitySearchLoading &&
            (identical(other.locationSearchResults, locationSearchResults) ||
                const DeepCollectionEquality().equals(
                    other.locationSearchResults, locationSearchResults)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locationSearchResults);

  @JsonKey(ignore: true)
  @override
  _$CitySearchLoadingCopyWith<_CitySearchLoading> get copyWith =>
      __$CitySearchLoadingCopyWithImpl<_CitySearchLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loaded(List<Location> locationSearchResults),
    @required TResult loading(List<Location> locationSearchResults),
    @required TResult failed(List<Location> locationSearchResults),
  }) {
    assert(loaded != null);
    assert(loading != null);
    assert(failed != null);
    return loading(locationSearchResults);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loaded(List<Location> locationSearchResults),
    TResult loading(List<Location> locationSearchResults),
    TResult failed(List<Location> locationSearchResults),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(locationSearchResults);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loaded(_CitySearchLoaded value),
    @required TResult loading(_CitySearchLoading value),
    @required TResult failed(_CitySearchFailed value),
  }) {
    assert(loaded != null);
    assert(loading != null);
    assert(failed != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loaded(_CitySearchLoaded value),
    TResult loading(_CitySearchLoading value),
    TResult failed(_CitySearchFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CitySearchLoading implements CitySearchState {
  const factory _CitySearchLoading(
      {@required List<Location> locationSearchResults}) = _$_CitySearchLoading;

  @override
  List<Location> get locationSearchResults;
  @override
  @JsonKey(ignore: true)
  _$CitySearchLoadingCopyWith<_CitySearchLoading> get copyWith;
}

/// @nodoc
abstract class _$CitySearchFailedCopyWith<$Res>
    implements $CitySearchStateCopyWith<$Res> {
  factory _$CitySearchFailedCopyWith(
          _CitySearchFailed value, $Res Function(_CitySearchFailed) then) =
      __$CitySearchFailedCopyWithImpl<$Res>;
  @override
  $Res call({List<Location> locationSearchResults});
}

/// @nodoc
class __$CitySearchFailedCopyWithImpl<$Res>
    extends _$CitySearchStateCopyWithImpl<$Res>
    implements _$CitySearchFailedCopyWith<$Res> {
  __$CitySearchFailedCopyWithImpl(
      _CitySearchFailed _value, $Res Function(_CitySearchFailed) _then)
      : super(_value, (v) => _then(v as _CitySearchFailed));

  @override
  _CitySearchFailed get _value => super._value as _CitySearchFailed;

  @override
  $Res call({
    Object locationSearchResults = freezed,
  }) {
    return _then(_CitySearchFailed(
      locationSearchResults: locationSearchResults == freezed
          ? _value.locationSearchResults
          : locationSearchResults as List<Location>,
    ));
  }
}

/// @nodoc
class _$_CitySearchFailed implements _CitySearchFailed {
  const _$_CitySearchFailed({@required this.locationSearchResults})
      : assert(locationSearchResults != null);

  @override
  final List<Location> locationSearchResults;

  @override
  String toString() {
    return 'CitySearchState.failed(locationSearchResults: $locationSearchResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CitySearchFailed &&
            (identical(other.locationSearchResults, locationSearchResults) ||
                const DeepCollectionEquality().equals(
                    other.locationSearchResults, locationSearchResults)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locationSearchResults);

  @JsonKey(ignore: true)
  @override
  _$CitySearchFailedCopyWith<_CitySearchFailed> get copyWith =>
      __$CitySearchFailedCopyWithImpl<_CitySearchFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loaded(List<Location> locationSearchResults),
    @required TResult loading(List<Location> locationSearchResults),
    @required TResult failed(List<Location> locationSearchResults),
  }) {
    assert(loaded != null);
    assert(loading != null);
    assert(failed != null);
    return failed(locationSearchResults);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loaded(List<Location> locationSearchResults),
    TResult loading(List<Location> locationSearchResults),
    TResult failed(List<Location> locationSearchResults),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(locationSearchResults);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loaded(_CitySearchLoaded value),
    @required TResult loading(_CitySearchLoading value),
    @required TResult failed(_CitySearchFailed value),
  }) {
    assert(loaded != null);
    assert(loading != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loaded(_CitySearchLoaded value),
    TResult loading(_CitySearchLoading value),
    TResult failed(_CitySearchFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _CitySearchFailed implements CitySearchState {
  const factory _CitySearchFailed(
      {@required List<Location> locationSearchResults}) = _$_CitySearchFailed;

  @override
  List<Location> get locationSearchResults;
  @override
  @JsonKey(ignore: true)
  _$CitySearchFailedCopyWith<_CitySearchFailed> get copyWith;
}
