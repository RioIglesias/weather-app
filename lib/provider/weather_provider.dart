import 'package:flutter/material.dart';

import '../models/weather_models.dart';
import '../services/weather_api.dart';

class WeatherProvider extends ChangeNotifier {
  TextEditingController cityNameText = TextEditingController();
  WeatherService weatherService = WeatherService();
  WeatherModels weatherModel = WeatherModels();

  showWeatherData() async {
    // Mengambil data nama kota dari API
    weatherModel = await weatherService.getCurrentWeather(cityNameText.text);
    notifyListeners();
  }
}
