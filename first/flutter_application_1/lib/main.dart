import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "플러터 타이틀",
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("sdfsdf"),
            Text("sdfsdf"),
            Text("sdfsdf"),
            Text("sdfsdf"),
            Text("sdfsdf"),
          ],
        ),
      ),
    );
    
  }
}