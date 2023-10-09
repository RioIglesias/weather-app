import 'package:dio/dio.dart';

import '../models/weather_models.dart';

class WeatherService {
  final dio = Dio();

  Future<WeatherModels> getCurrentWeather(String cityName) async {
    //Memanggil API openweathermap.org menggunakan library DIO
    final response = await dio.get(
              'https://api.openweathermap.org/data/2.5/weather?q=${cityName}&appid=04910320575f4a0143e42fa84513045e&units=metric');
    print(response.requestOptions.path);
    return WeatherModels.fromJson(response.data);
  }
}
