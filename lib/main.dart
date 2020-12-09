import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'mainpage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
          primarySwatch: Colors.amber,
          primaryColor: defaultTargetPlatform == TargetPlatform.iOS
              ? Colors.grey[50]
              : null),
      home: new HomePage(),
      /* routes:  <String,WidgetBuilder>{
        "/a":(BuildContext context)=>new NewPage("New Page"),
    }*/
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Rishi Mehra"),
              accountEmail: new Text("rishi4u4ever000@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.deepPurple
                        : Colors.black12,
                child: new Text("R"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.deepPurple
                          : Colors.black12 /*Colors.black12*/,
                  child: new Text("M"),
                ),
              ],
            ),
            new ListTile(
              title: new Text("Home"),
              trailing: new Icon(Icons.home),
              onTap: () => Navigator.of(context).pop(),
            ),
            new ListTile(
                title: new Text("Profile"),
                trailing: new Icon(Icons.verified_user),
                onTap: () {
                  Navigator.of(context).pop();
                  //  Navigator.of(context).pushNamed("/a");
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new NewPage("Profile")));
                }),
            new ListTile(
              title: new Text("Notification"),
              trailing: new Icon(Icons.notification_important),
            ),
            new ListTile(
              title: new Text("Settings"),
              trailing: new Icon(Icons.settings),
            ),
            new ListTile(
              title: new Text("Logout"),
              trailing: new Icon(Icons.logout),
            )
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Home Page"),
        ),
      ),
    );
  }
}
