import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constraints.dart';

// ignore: must_be_immutable
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
    var media  = MediaQuery.of(context).size;
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

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            '12AM',
            style: widget.isSelected ? kHourWeatherHourTextStyle: kHourWeatherHourTextStyle.copyWith(color: Colors.white,fontSize: media.width/35),
          ),
          ClipRRect(
            child: Container(
              constraints: BoxConstraints.tightFor(width: media.width/8,height: media.width/8),
              color: widget.isSelected ? kHourWeatherSelectedIconBackgroundColor: kHourWeatherIconBackgroundColor,
              child: Icon(
                Icons.wb_sunny,
                color: widget.isSelected ? kHourWeatherSelectedIconColor : Colors.white,
                size: media.width/15,
              ),
            ),
            borderRadius: BorderRadius.circular(90),
          ),
          Text('26°C',
            style: widget.isSelected ?
            kHourWeatherTempTextStyle.copyWith(fontSize: media.width/25):
            kHourWeatherTempTextStyle.copyWith(color: Colors.white,fontSize: media.width/25),
          )
        ],
      ),
    );
  }
}
