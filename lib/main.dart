import 'package:beautiful_weather/weather_screen.dart';
import 'package:flutter/material.dart';
import 'constraints.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Forecast',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: WeatherScreen(),
    );
  }
}
