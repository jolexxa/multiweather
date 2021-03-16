import 'dart:async';

import 'package:meta_weather_api/meta_weather_api.dart' hide Weather;
import 'package:weather_repository/weather_repository.dart';

class WeatherRepository {
  WeatherRepository({MetaWeatherApiClient weatherApiClient})
      : _weatherApiClient = weatherApiClient ?? MetaWeatherApiClient();

  final MetaWeatherApiClient _weatherApiClient;

  Future<List<Location>> locationSearch(String query) async {
    final locations = await _weatherApiClient.locationSearch(query);
    return locations;
  }

  Future<Weather> getWeather(Location location) async {
    final weather = await _weatherApiClient.getWeather(location.woeid);
    return Weather(
      temperature: weather.theTemp,
      location: location.title,
      condition: weather.weatherStateAbbr.toCondition,
    );
  }
}

extension on WeatherState {
  WeatherCondition get toCondition {
    switch (this) {
      case WeatherState.clear:
        return WeatherCondition.clear;
      case WeatherState.snow:
      case WeatherState.sleet:
      case WeatherState.hail:
        return WeatherCondition.snowy;
      case WeatherState.thunderstorm:
      case WeatherState.heavyRain:
      case WeatherState.lightRain:
      case WeatherState.showers:
        return WeatherCondition.rainy;
      case WeatherState.heavyCloud:
      case WeatherState.lightCloud:
        return WeatherCondition.cloudy;
      default:
        return WeatherCondition.unknown;
    }
  }
}
