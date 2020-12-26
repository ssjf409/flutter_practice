import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScreenC"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              color: Colors.red,
              child: Text("Go to ScreenA"),
              onPressed: () {},
            ),
            RaisedButton(
              color: Colors.red,
              child: Text("Go to ScreenB"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
