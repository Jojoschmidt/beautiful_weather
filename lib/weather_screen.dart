import 'package:flutter/material.dart';

import 'constraints.dart';
import 'date_change_button.dart';
import 'hour_rain_list_view.dart';
import 'hour_weather_list_view.dart';

// ignore: must_be_immutable
class WeatherScreen extends StatelessWidget {
  int selectedIndex = -1;
  onSelected(int index) {
    if(selectedIndex == index){
      selectedIndex = -1;
    }else {
      selectedIndex = index;
    }
  }
  @override
  Widget build(BuildContext context) {
    var media  = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 10,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weather Forecast',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: media.width/22
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.cloud,
                          color: Colors.white,
                          size: media.width/15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Today',
                              style: kBasicText.copyWith(fontSize: media.width/17),
                            ),
                            Text(
                              'Sat, 3 Aug',
                              style: kBasicText.copyWith(fontSize: media.width/35),
                            )
                          ],
                        ),
                        SizedBox(width: media.width/23,)
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(width: media.width/20,),
                        Text(
                            '28',
                            style: TextStyle(
                                fontSize: media.width/5,
                                fontWeight: FontWeight.w200,
                                color: Colors.white
                            )
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              height: media.width/20,
                            ),
                            Text(
                              '°C',
                              style: kBasicText.copyWith(fontSize: media.width/15),

                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Barcelona, Spain',style: kBasicText.copyWith(fontSize: media.width/33),),
                          ],
                        ),
                        SizedBox(height: media.width/30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Feels like 32   *   Sunset 20:15',style: kBasicText.copyWith(fontSize:  media.width/33),),
                          ],
                        ),
                      ],
                    ),
                  ),


                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        DateChangeButton('Today',(){}),
                        DateChangeButton('Tomorrow',(){}),
                        DateChangeButton('Next 7 Days >',(){}),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 12,
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 6,
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: media.width/30),
                        Flexible(child: HourWeatherListView()),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: media.width/15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: media.width/30,),
                            Text(
                              'Chance of Rain',
                              style: kHourRainTextStyle.copyWith(fontSize: media.width/26),
                            ),
                            SizedBox(height: media.width/30,),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //TODO connect listViews
                  //TODO polish UIh
                  //TODO create second screen
                  //TODO create different themes based on weather
                  //TODO create actual api integration
                  Expanded(
                    flex: 6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(width: media.width/30,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'heavy\nrain',
                              style: kHourRainTextStyle.copyWith(fontSize: media.width/35),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              'rainy',
                              style: kHourRainTextStyle.copyWith(fontSize: media.width/35),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              'sunny',
                              style: kHourRainTextStyle.copyWith(fontSize: media.width/35),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: media.width/60,)
                          ],
                        ),
                        Flexible(
                            child: HourRainListView()
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
