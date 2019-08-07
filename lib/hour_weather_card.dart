import 'package:flutter/material.dart';

import 'constraints.dart';

class HourWeatherCard extends StatefulWidget {
  bool isSelected;
  Function action;
  HourWeatherCard(this.isSelected,this.action);

  @override
  _HourWeatherCardState createState() => _HourWeatherCardState();
}

class _HourWeatherCardState extends State<HourWeatherCard> with SingleTickerProviderStateMixin{

  Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    double padValueTop = widget.isSelected? 0:20;
    double padValueBottom = widget.isSelected? 20:0;
    return AnimatedPadding(
      padding: EdgeInsets.only(bottom: padValueBottom,top: padValueTop),
      curve: Curves.decelerate,
      duration: Duration(milliseconds: 200),
      child: Container(
         decoration: widget.isSelected? BoxDecoration(
           borderRadius: BorderRadius.circular(90),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withAlpha(40),
              blurRadius: 10,
              spreadRadius: 0,
              offset: Offset(0, 0),
            )
          ],

        ):BoxDecoration(),
        width: 100,
        height: 250,

        child: RawMaterialButton(
          elevation: 5,
          onPressed: widget.action,

          shape: RoundedRectangleBorder(
           side: BorderSide(color: Color(0xFF2A2A53),width: 2),
            borderRadius: BorderRadius.circular(50)
          ),

          fillColor:widget.isSelected?Colors.white: Color(0xFF1E1F45),

          constraints: BoxConstraints.tightFor(
            height: 190,
            width: 100,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                '12AM',
                style: widget.isSelected?kBasicText.copyWith(color: Colors.black): kBasicText,
              ),
              ClipRRect(
                child: Container(
                  constraints: BoxConstraints.tightFor(width: 55,height: 55),
                  color: widget.isSelected? Color(0xFFDEE9F8): Color(0xFF191A43),
                  child: Icon(
                    Icons.wb_sunny,
                    color: widget.isSelected? Color(0xFF5491D7): Colors.white,
                    size: 35,
                  ),
                ),
                borderRadius: BorderRadius.circular(90),
              ),
              Text('26°C',
                style: widget.isSelected?
                  kBasicText.copyWith(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600):
                  kBasicText.copyWith(fontSize: 20,fontWeight: FontWeight.w600
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
