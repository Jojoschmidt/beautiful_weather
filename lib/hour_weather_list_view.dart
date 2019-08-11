import 'package:flutter/material.dart';

import 'hour_weather_card.dart';

class HourWeatherListView extends StatefulWidget {
  @override
  _HourWeatherListViewState createState() => _HourWeatherListViewState();
}

class _HourWeatherListViewState extends State<HourWeatherListView> {

  int selectedIndex = -1;
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
    var media  = MediaQuery.of(context).size;

    return ListView.separated(
      itemBuilder: (BuildContext context,int index){
        return HourWeatherCard(selectedIndex == index,()=>onSelected(index));
      },
      itemCount: 6,
      separatorBuilder: (BuildContext context, int index) => SizedBox(width: media.width/50,),
      scrollDirection: Axis.horizontal,
    );
  }
}
