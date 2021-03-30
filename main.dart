import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MAD A#1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'MAD A#1'),
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
  bool buttonclicked = false;
  String text = 'HELLO KASHIF';
  

  void _changetext() {
    setState(() {
      if (buttonclicked) {
        text = 'HELLO 209147';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asset/kk.png',
              fit: BoxFit.cover,
              height: 50,
              width: 50,
            ),
            Container(
                padding: const EdgeInsets.all(8.0), child: Text('KASHIF KHAN'))
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text),
            Container(
              margin: EdgeInsets.all(25),
              child: FlatButton(
                child: Text(
                  'change text',
                  style: TextStyle(fontSize: 24.0),
                ),
                color: Colors.yellow,
                textColor: Colors.blue,
                onPressed: () {
                  buttonclicked = true;
                  _changetext();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}