part of 'multi_weather_bloc.dart';

@freezed
abstract class MultiWeatherEvent with _$MultiWeatherEvent {
  const factory MultiWeatherEvent.started() = _Started;
}