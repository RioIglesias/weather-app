import 'package:flutter/material.dart';

import '../provider/weather_provider.dart';

Row inputData(WeatherProvider provider) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 50,
        width: 270,
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: TextFormField(
          //Memasukkan nama kota untuk mendapatkan Data API dan akan mengeluarkan hasil data tersebut
          controller: provider.cityNameText,
          decoration:
              InputDecoration(border: InputBorder.none, labelText: "City Name"),
          style: TextStyle(),
          onEditingComplete: () => provider.showWeatherData(),
        ),
      ),
      IconButton(
          onPressed: () => provider.showWeatherData(),
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.blue[400],
          ))
    ],
  );
}

// Rio Iglesias
// 201011400423
// 06TPLM006
// UAS MOBILE PROGRAMMING