import 'package:flutter/material.dart';

import 'constraints.dart';
import 'hour_weather_card.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  int selectedIndex = 3;

  _onSelected(int index) {
    //setState(() => _selectedIndex = index);
    print(index);
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
                      fontWeight: FontWeight.w300,
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
                  DateButton('Today',null),
                  DateButton('Tomorrow',null),
                  DateButton('Next 7 Days >',null),
                ],
              ),
            ),
            Expanded(

              flex: 2,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: ListView.separated(
                  padding: EdgeInsets.all(10),
                  itemBuilder: (BuildContext context,int index){
                    return HourWeatherCard(selectedIndex == index,(){setState(() {
                      selectedIndex = index;
                      print(index);
                    });});
                  },
                  itemCount: 6,
                  separatorBuilder: (BuildContext context, int index) => SizedBox(width: 12,),
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Expanded(
              child: Row(),
            ),

          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class DateButton extends StatelessWidget {
  String text;
  Function action;

  DateButton(this.text, this.action);
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Color(0xFF10103B),
      onPressed: action,
      child: Text(text,style: kBasicText,),
      elevation: 0,
    );
  }
}
