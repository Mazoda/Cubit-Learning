import 'package:blocapp/weather_app/cubits/weather_cubit/weather_state.dart';
import 'package:blocapp/weather_app/models/weather_model.dart';
import 'package:blocapp/weather_app/services/weather_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.weatherService) : super(WeatherIsLoadig());
  WeatherService weatherService;
  void getWeather({required String cityName}) async {
    emit(WeatherIsLoadig());
    try {
      WeatherModel weatherModel =
          await weatherService.getWeather(cityName: cityName);
      emit(WeatherSuccess());
    } on Exception catch (e) {
      emit(WeatherFailed());
    }
  }
}
