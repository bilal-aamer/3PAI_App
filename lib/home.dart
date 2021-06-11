import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print("Menu Pressed!");
          },
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 7.0),
            child: IconButton(
              icon: Icon(
                Icons.account_circle,
              ),
              onPressed: () {
                print("Profile pressed!");
              },
            ),
          ),
        ],
        title: Center(
          child: Text("DASHBOARD"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                color: Theme.of(context).accentColor,
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      child: Image(image: AssetImage('assets/anon_user.png')),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Text("Name: Bilal Aamer"),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text("DOB: 10 / 10 / 2002"),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text("Personality: INFJ"),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
