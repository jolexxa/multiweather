import 'package:get_it/get_it.dart';
import 'package:meta_weather_api/meta_weather_api.dart';
import 'package:weather_repository/weather_repository.dart';
import 'package:http/http.dart' as http;

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerLazySingleton<WeatherRepository>(
    () => WeatherRepository(
      weatherApiClient: MetaWeatherApiClient(httpClient: http.Client()),
    ),
  );
}
