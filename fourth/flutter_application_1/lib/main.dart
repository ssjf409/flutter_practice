import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "buildContext와 snackbar",
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: Builder(
        builder: (BuildContext ctx) {
          return Center(
            child: FlatButton(
              child: Text(
                'Show me',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
              onPressed: () {
                Scaffold.of(ctx).showSnackBar(SnackBar(
                  content: Text("hello"),
                ));
              },
            ),
          );
        },
      )
    );
  }
}
