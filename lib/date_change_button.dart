import 'package:flutter/material.dart';

import 'constraints.dart';

// ignore: must_be_immutable
class DateChangeButton extends StatefulWidget {
  String text;
  Function action;
  DateChangeButton(this.text, this.action);
  @override
  _DateChangeButtonState createState() => _DateChangeButtonState();
}

class _DateChangeButtonState extends State<DateChangeButton> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Color(0xFF10103B),
      onPressed: widget.action,
      child: Text(widget.text,style: kBasicText,),
      elevation: 0,
    );
  }
}
