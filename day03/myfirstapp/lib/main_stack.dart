import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my first app',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
          centerTitle: true,
          leading: Icon(Icons.home, size: 28),
          actions: [
            Icon(Icons.refresh, size: 28),
            SizedBox(width: 16.0),
          ],
        ),
        body: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: 300.0,
              width: 300.0,
              color: Colors.indigo,
            ),
            Container(
              height: 150.0,
              width: 150.0,
              color: Colors.red,
            ),
            Container(
              height: 50.0,
              width: 50.0,
              color: Colors.yellow,
            ),
          ],
        ));
  }
}
