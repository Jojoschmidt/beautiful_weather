import 'package:flutter/material.dart';

import 'hour_rain_card.dart';

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
    var media  = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(height: media.width/60,),
        Expanded(
          child: Row(
            children: <Widget>[
              SizedBox(width: media.width/60,),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (BuildContext context,int index){
                    return HourRainCard(isSelected: selectedIndex == index,percentage:((index+1)*10/100));
                  },
                  itemCount: 6,
                  separatorBuilder: (BuildContext context, int index) => SizedBox(width: media.width/11,),
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(width: media.width/60,),
            ],
          ),
        ),
        SizedBox(height: media.width/60,),
      ],
    );
  }
}
