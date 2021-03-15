part of 'multi_weather_bloc.dart';

@freezed
abstract class MultiWeatherState with _$MultiWeatherState {
  const factory MultiWeatherState.initial() = _Initial;
}
