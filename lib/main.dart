import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Weather Forecast",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _EnterCityName(),
                SizedBox(height: 10),
                _Pushkin(),
                _Friday(),
                _temperature(),
                _7day(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _EnterCityName() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Enter City Name',
        border: InputBorder.none,
        icon: Icon(Icons.face),
      ),
    ),
  );
}

Widget _Pushkin() {
  return Container(
    child: Text(
      "Pushkin 154, Taraz",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 50,
      ),
    ),
  );
}

Widget _Friday() {
  return Container(
    child: Text(
      "Friday, April 19, 2024",
      style: TextStyle(
        color: Colors.blue[700],
        fontSize: 30,
      ),
    ),
  );
}

Widget _14F() {
  return Row(

  )
}

Widget _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.ac_unit,
            color: Colors.blue[900],
            size: 40,
          ),
          SizedBox(height: 5),
          Text(
            'km/hr',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
      SizedBox(width: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.ac_unit,
            color: Colors.blue[900],
            size: 40,
          ),
          SizedBox(height: 5),
          Text(
            '%',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
      SizedBox(width: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.ac_unit,
            color: Colors.blue[900],
            size: 40,
          ),
          SizedBox(height: 5),
          Text(
            '%',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    ],
  );
}

Widget _7day() {
  return Container(
    child: Text(
      "7 DAY WEATHER FORECAST",
      style: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    ),
  );
}

