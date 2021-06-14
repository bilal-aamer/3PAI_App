import 'package:flutter/material.dart';
import 'package:three_pai/myclasses.dart';
import 'package:three_pai/profile.dart';
import 'package:three_pai/recommended.dart';

import 'math.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                }),
          ),
        ],
        title: Center(
          child: Text("DASHBOARD"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      color: Theme.of(context).accentColor,
                      height: MediaQuery.of(context).size.height / 3.3,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 3.1,
                                  height:
                                      MediaQuery.of(context).size.height / 4,
                                  child: Image(
                                      image:
                                          AssetImage('assets/anon_user.png')),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 100),
                                child: Column(
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
                                    TextButton.icon(
                                      onPressed: () {
                                        print("To personality test");
                                      },
                                      icon: Icon(Icons.edit),
                                      label: Text(
                                        "Take Test",
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.lightGreen,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfilePage()),
                              );
                            },
                            child: Text("My Profile"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.lightGreen,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 290),
                        child: GestureDetector(
                          child: Text(
                            "My Classes",
                            textScaleFactor: 2,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 4,
                      color: Colors.lightGreen,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 3.1,
                            height: MediaQuery.of(context).size.height / 4,
                            child: Center(
                              child: Text(
                                "M",
                                textScaleFactor: 10,
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 45.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Mathematics",
                                        textScaleFactor: 2,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Text(
                                        "Instructor Name: Bill Jones\n\nIntelligence: 87.9%\n\nInterest: 90%",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => math()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 290.0),
                        child: GestureDetector(
                          child: Text(
                            "Recommended",
                            softWrap: false,
                            textScaleFactor: 1.5,
                          ),
                          onTap: () {
                            print("My Recommended Tapped!");
                            // Show list of recommended subject cards
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                color: Theme.of(context).primaryColor,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3.1,
                      height: MediaQuery.of(context).size.height / 4,
                      child: Center(
                        child: Text(
                          "DS",
                          textScaleFactor: 9,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 45.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Data Science",
                                textScaleFactor: 2,
                              ),
                            ),
                            Text(
                              "Prediction: 98%\nInstructor Name: Bill Jones\nIntelligence: 87.9%\nInterest: 90%",
                            ),
                            SizedBox(height: 14.0),
                            ElevatedButton(
                              onPressed: () {
                                print("Enroll for DS");
                                // Student is enrolled for the sub if satisfies the rules
                              },
                              child: Text("Enroll"),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.lightGreen,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
