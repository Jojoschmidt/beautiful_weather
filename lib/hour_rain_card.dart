import 'package:flutter/material.dart';

import 'constraints.dart';
import 'dashed_line_painter.dart';

class HourRainCard extends StatefulWidget {
  double percentage;
  bool isSelected;

  HourRainCard({this.percentage, this.isSelected});

  @override
  _HourRainCardState createState() => _HourRainCardState();
}

class _HourRainCardState extends State<HourRainCard> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Stack(
          fit: StackFit.loose,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(width: 11.5),
                CustomPaint(
                  painter: LineDashedPainter(),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    constraints: BoxConstraints.tightFor(width: 23,height: 169*widget.percentage),
                    color: widget.isSelected ? kHourRainColumnSelectedColor : kHourRainColumnColor,
                  ),
                ),
              ],
            ),

          ],
        ),
        SizedBox(height: 20,),
        Text(
          '10AM',
          style: kHourRainTextStyle,
        ),
      ],

    );
  }
}
