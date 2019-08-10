import 'package:flutter/material.dart';

import 'hour_rain_card.dart';
import 'hour_weather_card.dart';

class HourRainListView extends StatefulWidget {

  @override
  _HourRainListViewState createState() => _HourRainListViewState();
}

class _HourRainListViewState extends State<HourRainListView> {
  int selectedIndex = 3;
  onSelected(int index) {
    setState(() {
      if(selectedIndex == index){
        selectedIndex = -1;
      }else {
        selectedIndex = index;
      }
    });

  }
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(10),
      itemBuilder: (BuildContext context,int index){
        return HourRainCard(isSelected: selectedIndex == index,percentage:((index+1)*10/100));
      },
      itemCount: 6,
      separatorBuilder: (BuildContext context, int index) => SizedBox(width: 50,),
      scrollDirection: Axis.horizontal,
    );
  }
}
