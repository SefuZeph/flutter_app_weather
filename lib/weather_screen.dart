import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const int $deg = 0x00B0;

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 229, 236, 244),
      child: Center(
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Karachi",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "MONDAY 7:00 AM",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 5,
                child: Column(
                  children: <Widget>[
                    Image(
                      image: NetworkImage(
                          "https://firebasestorage.googleapis.com/v0/b/phedits-55f03.appspot.com/o/flutter%20res%2Fsunny.png?alt=media&token=92a13b50-e332-48a8-afaf-953f35ed2b5d"),
                      height: 150,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "22\u00B0C",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "GOOD MORNING",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    Text(
                      "WASIM",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )
                  ],
                )),
            Expanded(
                flex: 2,
                child:_bottomNavigation())
          ],
        ),
      ),
    );
  }
}
Widget _bottomNavigation() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(FontAwesomeIcons.cloudSun,color: Color.fromARGB(255, 106, 112, 124),),
          SizedBox(
            height: 15,
          ),
          Text(
            "SUNRISE",
            style: TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 106, 112, 124),
                fontWeight: FontWeight.w400),
          ),
          Text(
            "7:00",
            style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 106, 112, 124),
                fontWeight: FontWeight.w500),
          )
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(FontAwesomeIcons.wind,color: Color.fromARGB(255, 106, 112, 124),),
          SizedBox(
            height: 15,
          ),
          Text(
            "WIND",
            style: TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 106, 112, 124),
                fontWeight: FontWeight.w400),
          ),
          Text(
            "4m/s",
            style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 106, 112, 124),
                fontWeight: FontWeight.w500),
          )
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(FontAwesomeIcons.temperatureHigh,color: Color.fromARGB(255, 106, 112, 124),),
          SizedBox(
            height: 15,
          ),
          Text(
            "Temperature",
            style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 106, 112, 124),
                fontWeight: FontWeight.w400),
          ),
          Text(
            "22\u00B0C",
            style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 106, 112, 124),
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    ],
  );
}
