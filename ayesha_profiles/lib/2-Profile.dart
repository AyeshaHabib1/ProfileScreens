import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FlutterApp",
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashBoardState();
  }
}

class DashBoardState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 330,
                    color: Colors.deepOrange,
                  ),
                  const Positioned(
                    top: 10,
                    right: 30,
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                          height: 90,
                          margin: const EdgeInsets.only(top: 60),
                          child: const CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            backgroundImage: NetworkImage('data:image/png;base64,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'),
                          )),
                      const Padding(
                        padding: EdgeInsets.all(4),
                      ),
                      const Text(
                        "Ayesha Habib",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(4),
                      ),
                      const Text(
                        "Pakistan",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 77),
                        padding: const EdgeInsets.all(10),
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                      padding:
                                      const EdgeInsets.only(top: 15, bottom: 5),
                                      child: const Text("Photos",
                                          style: TextStyle(
                                              color: Colors.black54))),
                                  Container(
                                      padding: const EdgeInsets.only(bottom: 15),
                                      child: const Text("5,000",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 16))),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                      padding:
                                      const EdgeInsets.only(top: 15, bottom: 5),
                                      child: const Text("Followers",
                                          style: TextStyle(
                                              color: Colors.black54))),
                                  Container(
                                      padding: const EdgeInsets.only(bottom: 15),
                                      child: const Text("5,000",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 16))),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                      padding:
                                      const EdgeInsets.only(top: 10, bottom: 5),
                                      child: const Text("Followings",
                                          style: TextStyle(
                                              color: Colors.black54))),
                                  Container(
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: const Text("5,000",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 16))),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const UserInfo()
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Card(
            child: Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "User Information",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const Divider(
                    color: Colors.black38,
                  ),
                  Column(
                    children: const <Widget>[
                      ListTile(
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        leading: Icon(Icons.my_location),
                        title: Text("Location"),
                        subtitle: Text("Pakistan"),
                      ),
                      ListTile(
                        leading: Icon(Icons.email),
                        title: Text("Email"),
                        subtitle: Text("ashkhanhabib@gmail.com"),
                      ),
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text("Phone"),
                        subtitle: Text("+92 3015031981"),
                      ),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text("About Me"),
                        subtitle: Text(
                            "My Profile"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}