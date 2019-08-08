import 'package:flutter/material.dart';
import 'hour_weather_button.dart';

// ignore: must_be_immutable
class HourWeatherCard extends StatefulWidget {
  bool isSelected;
  Function action;
  HourWeatherCard(this.isSelected,this.action);

  @override
  _HourWeatherCardState createState() => _HourWeatherCardState();
}

class _HourWeatherCardState extends State<HourWeatherCard> with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {

    double padValueTop = widget.isSelected? 0:20;
    double padValueBottom = widget.isSelected? 20:0;
    return AnimatedContainer(
      curve: Curves.decelerate,
      duration: Duration(milliseconds: 200),
      padding: EdgeInsets.only(bottom: padValueBottom,top: padValueTop),
      width: 100,
      height: 230,
      child: HourWeatherButton(widget.isSelected,widget.action),
    );
  }
}
