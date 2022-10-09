import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Weather app',
            style: TextStyle(
              color: Colors.black54
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black54),
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.settings))
          ],
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        _headerImage(),
        SafeArea(
            child: Padding(
                padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _weatherDescription(),
                  Divider(),
                  _temperature(),
                  Divider(),
                  _temperatureForecast(),
                  Padding(padding: EdgeInsets.all(75)),
                  Divider(),
                  _rating(),
                ],
              ),
            ),
        ),

      ],
    ),
  );
}

Image _headerImage(){
  return Image(
      image: NetworkImage('https://avatars.mds.yandex.net/i?id=815733744cd7a37581366f42ea44126c-4499646-images-thumbs&n=13&exp=1'),
    fit: BoxFit.cover,
  );
}
Column _weatherDescription(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text('Friday, October 07',
        style: TextStyle(
          fontSize: 30,
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
      ),
      Divider(),
      Text('We wish you good luck and have a nice day. You will succeed, We believe in you',
        style: TextStyle(
          color: Colors.black38
        ),
      ),
    ],
  );
}

Row _temperature(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.sunny, color: Colors.yellow,)
        ],
      ),
      SizedBox(width: 16),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('14 grad. clear')
            ],
          ),
          Row(
            children: [
              Text('Minskaya obl., Minsk')
            ],
          )
        ],
      )
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
    spacing: 10.0,
    children: [
      Chip(
          label: Text('15°', style: TextStyle(fontSize: 15.0)),
        avatar: Icon(Icons.wb_cloudy, color: Colors.blue),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Colors.grey)
        ),
        //backgroundColor: Colors.blue,
      ),
      Chip(
        label: Text('18°', style: TextStyle(fontSize: 15.0)),
        avatar: Icon(Icons.sunny_snowing, color: Colors.orangeAccent),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.grey)
        ),
        //backgroundColor: Colors.blue,
      ),
      Chip(
        label: Text('17°', style: TextStyle(fontSize: 15.0)),
        avatar: Icon(Icons.wb_cloudy, color: Colors.blue),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.grey)
        ),
        //backgroundColor: Colors.blue,
      ),
      Chip(
        label: Text('15°', style: TextStyle(fontSize: 15.0)),
        avatar: Icon(Icons.wb_cloudy, color: Colors.blue),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.grey)
        ),
        //backgroundColor: Colors.blue,
      ),
      Chip(
        label: Text('16°', style: TextStyle(fontSize: 15.0)),
        avatar: Icon(Icons.wb_cloudy, color: Colors.blue),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.grey)
        ),
        //backgroundColor: Colors.blue,
      ),
      Chip(
        label: Text('16°', style: TextStyle(fontSize: 15.0)),
        avatar: Icon(Icons.wb_cloudy, color: Colors.blue),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.grey)
        ),
        //backgroundColor: Colors.blue,
      ),
      Chip(
        label: Text('12°', style: TextStyle(fontSize: 15.0)),
        avatar: Icon(Icons.sunny, color: Colors.orangeAccent),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.grey)
        ),
        //backgroundColor: Colors.blue,
      ),
    ],
  );
}

Row _rating(){
  var stars = Row(
    children: [
      Icon(Icons.star, size: 15.0, color: Colors.orange),
      Icon(Icons.star, size: 15.0, color: Colors.orange),
      Icon(Icons.star, size: 15.0, color: Colors.orange),
      Icon(Icons.star, size: 15.0, color: Colors.orange),
      Icon(Icons.star, size: 15.0, color: Colors.black38),
    ],
  );
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text('Source: weather.com', style: TextStyle(fontSize: 15)),
      stars,

    ],
  );
}