import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var scaffold = new Scaffold(
      appBar: new AppBar(
        title: new Text('Mela Messenger'),
        bottom: new TabBar(
          tabs: [
            new Tab(
              icon: new Icon(Icons.chat_bubble),
              text: "CHAT",
            ),
            new Tab(icon: new Icon(Icons.video_call), text: "VIDEO"),
          ],
        ),
      ),
      body: new TabBarView(children: <Widget>[
        new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Icon(Icons.insert_emoticon,
                        color: const Color(0xFF000000), size: 48.0),
                    new Icon(Icons.dialer_sip,
                        color: const Color(0xFF000000), size: 48.0)
                  ]),
              new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Icon(Icons.keyboard_hide,
                        color: const Color(0xFF000000), size: 48.0),
                    new Icon(Icons.videocam,
                        color: const Color(0xFF000000), size: 48.0)
                  ])
            ]),
        new Text(
          " TabBarView placeholder 1",
          style: new TextStyle(
              fontSize: 12.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w200,
              fontFamily: "Roboto"),
        )
      ]),
    );

    return DefaultTabController(
      // Added
      length: 2, // Added
      initialIndex: 0, //Added
      child: scaffold, // Added
    );
  }
}
