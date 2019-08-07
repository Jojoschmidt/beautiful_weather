import 'package:beautiful_weather/weather_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Forecast',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF10103B),
        primaryTextTheme: TextTheme(
          headline: TextStyle(
            color: Colors.white
          )
        )
      ),
      home: WeatherScreen(),
    );
  }
}
