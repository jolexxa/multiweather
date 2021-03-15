import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_weather_event.dart';
part 'multi_weather_state.dart';
part 'multi_weather_bloc.freezed.dart';

class MultiWeatherBloc extends Bloc<MultiWeatherEvent, MultiWeatherState> {
  MultiWeatherBloc() : super(_Initial());

  @override
  Stream<MultiWeatherState> mapEventToState(
    MultiWeatherEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
