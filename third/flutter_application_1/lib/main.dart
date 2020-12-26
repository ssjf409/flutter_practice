import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Appbar배우기",
      theme: ThemeData(
        primarySwatch: Colors.red
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
        title: Text("Appbar icon menu"),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
          icon: Icon(Icons.shopping_cart), 
          onPressed: () { 
            print("Shopping cart button is clicked");
          },
          ),
          
          IconButton(
          icon: Icon(Icons.search), 
          onPressed: () { 
            print("search cart button is clicked");
          },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/1.png"),
                backgroundColor: Colors.white,
                
              ), 
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/2.png"),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage("assets/2.png"),
                //   backgroundColor: Colors.white,
                // ),
              ],
              accountEmail: Text("ssjf409"), 
              accountName: Text("ssjf409@naver.com"),
              onDetailsPressed: () {
                print("arrow is clicked");
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey[850]),
              title: Text("Home"),
              onTap: (){
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey[850]),
              title: Text("Settings"),
              onTap: (){
                print('Settings is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.grey[850]),
              title: Text("Q&A"),
              onTap: (){
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}