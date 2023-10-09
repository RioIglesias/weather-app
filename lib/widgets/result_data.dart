import 'package:flutter/material.dart';
import '../provider/weather_provider.dart';
import 'package:intl/intl.dart';

Column resultData(WeatherProvider provider) {
  return Column(
    children: [
      Text(
        provider.weatherModel.weather?.first.main ?? "",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
      ),
      //Mengambil data suhu dari API menggunakan library provider
      Text(
        '${provider.weatherModel.main?.temp?.toStringAsFixed(0) ?? ""}\u2103',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      SizedBox(
        height: 160,
      ),
      //Membuat format tanggal dari library intl
      Text(
        '${DateFormat.yMMMMEEEEd().format(DateTime.now())}',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      Text(
        provider.weatherModel.name ?? "",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    ],
  );
}
// Rio Iglesias
// 201011400423
// 06TPLM006
// UAS MOBILE PROGRAMMING
