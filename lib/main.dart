import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var titleSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Oeschinen Lake Comapground", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          Text("Kandresteg, Switzerland",style: TextStyle(color: Colors.grey, fontSize: 20))
      ],),
      Padding(padding: EdgeInsets.all(20.0)),
      Icon(Icons.star, size: 35,color: Colors.deepOrange,),
      Text("110", style: TextStyle(fontSize: 15),)
    ],);

    var buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

      Column(children: [
        Icon(Icons.call, size: 40, color: Colors.lightBlue),
        Text("Call", style: TextStyle(color: Colors.lightBlue),)
      ],),

        Padding(padding: EdgeInsets.all(30.0)),

      Column(children: [
        Icon(Icons.near_me, size: 40, color: Colors.blue),
        Text("Route", style: TextStyle(color: Colors.lightBlue))
      ],),

        Padding(padding: EdgeInsets.all(30.0)),

      Column(children: [
        Icon(Icons.share, size: 40, color: Colors.blue),
        Text("Share", style: TextStyle(color: Colors.lightBlue))
      ],)
    ],);

    var textSection = Container(
      child:
      Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        style: TextStyle(fontSize: 15,color: Colors.black87),
      ),
      padding: EdgeInsets.all(30.0)
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.network("https://t1.daumcdn.net/cfile/tistory/237F7C4A58F8125E2F", height: 240, width: 600, fit: BoxFit.fitWidth),
          Padding(padding: EdgeInsets.all(15.0)),
          titleSection,
          Padding(padding: EdgeInsets.all(15.0)),
          buttonSection,
          Padding(padding: EdgeInsets.all(15.0)),
          textSection
        ],
      ),
    );
  }
}
