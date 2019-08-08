import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constraints.dart';

class HourWeatherButton extends StatefulWidget {
  bool isSelected;
  Function action;
  HourWeatherButton(this.isSelected,this.action);
  @override
  _HourWeatherButtonState createState() => _HourWeatherButtonState();
}

class _HourWeatherButtonState extends State<HourWeatherButton> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 5,
      onPressed: (){
        setState(() {
          widget.action();
        });
      },
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
    );
  }
}
