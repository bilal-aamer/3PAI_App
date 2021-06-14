import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import 'home.dart';
import 'myclasses.dart';
import 'recommended.dart';

class ProfilePage extends StatefulWidget {
  bool _status = true;
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Center(
                child: Text('Menu'),
              ),
            ),
            ListTile(
              title: Text('My Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('My Classes'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyClass()),
                );
              },
            ),
            ListTile(
              title: Text('Recommended'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecommendedPage()),
                );
              },
            ),
            ListTile(
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 7.0),
            child: IconButton(
              icon: Icon(
                Icons.account_circle,
              ),
              onPressed: () {},
            ),
          ),
        ],
        title: Center(
          child: Text("My Profile"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Theme.of(context).primaryColor,
          child: Center(
            child: Column(
              children: [
                Text("data"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
