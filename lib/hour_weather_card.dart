import 'package:flutter/material.dart';

import 'constraints.dart';

class HourWeatherCard extends StatefulWidget {
  @override
  _HourWeatherCardState createState() => _HourWeatherCardState();
}

class _HourWeatherCardState extends State<HourWeatherCard> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: (){},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(90)),
        fillColor: Color(0xFF212249),
        constraints: BoxConstraints.tightFor(
          height: 170,
          width: 90
        ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          Text(
            '12AM',
            style: kBasicText,
          ),
          Icon(Icons.wb_sunny,color: Colors.white,),
          Text('26°C',style: kBasicText.copyWith(fontSize: 20,fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }
}
