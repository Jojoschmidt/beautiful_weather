import 'package:flutter/material.dart';

import 'constraints.dart';
import 'dashed_line_painter.dart';

// ignore: must_be_immutable
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
    var media  = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Stack(
          fit: StackFit.loose,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(width: media.width/40),
                CustomPaint(
                  painter: LineDashedPainter(height: media.width/2),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    constraints: BoxConstraints.tightFor(width: media.width/20,height: (media.width/3)*widget.percentage),
                    color: widget.isSelected ? kHourRainColumnSelectedColor : kHourRainColumnColor,
                  ),
                ),
              ],
            ),

          ],
        ),
        SizedBox(height: media.width/30,),
        Text(
          '10AM',
          style: kHourRainTextStyle.copyWith(fontSize: media.width/35),
        ),
      ],

    );
  }
}
