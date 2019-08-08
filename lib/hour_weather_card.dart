import 'package:flutter/material.dart';

import 'constraints.dart';

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
      child: RawMaterialButton(
        elevation: 5,
        onPressed: widget.action,
        shape: RoundedRectangleBorder(
         side: BorderSide(color: kHourWeatherCardBorderColor,width: 2),
          borderRadius: BorderRadius.circular(50)
        ),
        fillColor: widget.isSelected ? Colors.white: kHourWeatherCardBackgroundColor,
        constraints: BoxConstraints.tightFor(
          height: 190,
          width: 100,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              '12AM',
              style: widget.isSelected ? kHourWeatherHourTextStyle: kHourWeatherHourTextStyle.copyWith(color: Colors.white),
            ),
            ClipRRect(
              child: Container(
                constraints: BoxConstraints.tightFor(width: 55,height: 55),
                color: widget.isSelected ? kHourWeatherSelectedIconBackgroundColor: kHourWeatherIconBackgroundColor,
                child: Icon(
                  Icons.wb_sunny,
                  color: widget.isSelected ? kHourWeatherSelectedIconColor : Colors.white,
                  size: 35,
                ),
              ),
              borderRadius: BorderRadius.circular(90),
            ),
            Text('26°C',
              style: widget.isSelected ?
                kHourWeatherTempTextStyle:
                kHourWeatherTempTextStyle.copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
