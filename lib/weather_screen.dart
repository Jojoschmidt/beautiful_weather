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
    return Scaffold(
      body: SafeArea(
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
                        fontSize: 20
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.cloud,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Today',
                        style: kBasicText.copyWith(fontSize: 30),
                      ),
                      Text(
                        'Sat, 3 Aug',
                        style: kBasicText,
                      )
                    ],
                  ),
                  SizedBox(width: 30,)
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 30,),
                  Text(
                      '28',
                      style: TextStyle(
                          fontSize: 150,
                          fontWeight: FontWeight.w200,
                          color: Colors.white
                      )
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 34,
                      ),
                      Text(
                        '°C',
                        style: kBasicText.copyWith(fontSize: 40),

                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Barcelona, Spain',style: kBasicText.copyWith(fontSize: 15),),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Feels like 32   *   Sunset 20:15',style: kBasicText.copyWith(fontSize: 15),),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  DateChangeButton('Today',(){}),
                  DateChangeButton('Tomorrow',(){}),
                  DateChangeButton('Next 7 Days >',(){}),
                ],
              ),
            ),
            Expanded(

              flex: 3,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: HourWeatherListView(),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 20,
                    height: 50,
                  ),
                  Text(
                    'Chance of Rain',
                    style: kHourRainTextStyle.copyWith(fontSize: 20),
                  ),
                ],
              ),
            ),
            //TODO optimize to different screen sizes
            //TODO connect listViews
            //TODO polish UI
            //TODO create second screen
            //TODO create different themes based on weather
            //TODO create actual api integration
            Expanded(
              flex: 3,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'heavy\nrain',
                          style: kHourRainTextStyle,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'rainy',
                          style: kHourRainTextStyle,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'sunny',
                          style: kHourRainTextStyle,
                          textAlign: TextAlign.left,
                        ),

                      ],
                    ),
                  ),
                  Expanded(child: HourRainListView()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
