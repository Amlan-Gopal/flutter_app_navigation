import 'package:flutter/material.dart';
import 'firstPage.dart';
import 'secondPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/first' : (context) => FirstScreen(),
        '/second' : (context) => SecondScreen()
      },
      title: 'Navigation',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Home Page",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/first');
                },
                color: Colors.amber,
                child: Text(""
                    "Click for First",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.red[400]
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/second');
                },
                color: Colors.amber,
                child: Text(""
                    "Click for Second",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.red[400]
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
