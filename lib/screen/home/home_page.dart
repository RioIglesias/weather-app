import 'package:flutter/material.dart';
import '../../provider/weather_provider.dart';
import 'package:provider/provider.dart';

import '../../widgets/input_data.dart';
import '../../widgets/result_data.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WeatherProvider weatherProvider = WeatherProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
            opacity: 0.7,
            colorFilter: ColorFilter.mode(Colors.black26, BlendMode.color),
          ),
        ),
        child: Consumer<WeatherProvider>( //mengambil 
          builder: (context, provider, child) {
            return SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  inputData(provider), //input data
                  SizedBox(
                    height: 120,
                  ),
                  resultData(provider),//result data
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}