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
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body:SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image.network('https://marketplace.canva.com/EAFLlL2ki8I/1/0/1600w/canva-neon-minimalist-motivational-inspirational-quote-facebook-cover-IN_ZZM_uhQM.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(16.0, 200.0, 16.0, 16.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        margin: const EdgeInsets.only(top: 16.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(left: 96.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Pearly Product",
                                    style:
                                    Theme.of(context).textTheme.titleLarge,
                                  ),
                                  const ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    title: Text("Product Designer"),
                                    subtitle: Text("Ayesha Habib"),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: const <Widget>[
                                      Text("400"),
                                      Text("Likes")
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: const <Widget>[
                                      Text("5098"),
                                      Text("Comments")
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: const <Widget>[
                                      Text("870"),
                                      Text("Favourites")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: NetworkImage('https://w0.peakpx.com/wallpaper/841/194/HD-wallpaper-wonderful-smoke-awesome-mask-wondeful-thumbnail.jpg'), fit: BoxFit.cover)),
                        margin: const EdgeInsets.only(left: 16.0),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      children: const <Widget>[
                        ListTile(
                          title: Text("User information"),
                        ),
                        Divider(),
                        ListTile(
                          title: Text("Email"),
                          subtitle: Text("ashkhanhabib38@gmail.com"),
                          leading: Icon(Icons.email),
                        ),
                        ListTile(
                          title: Text("Phone"),
                          subtitle: Text("+92 3015031981"),
                          leading: Icon(Icons.phone),
                        ),
                        ListTile(
                          title: Text("Website"),
                          subtitle: Text("https://www.pearlyproducts.com"),
                          leading: Icon(Icons.web),
                        ),
                        ListTile(
                          title: Text("About"),
                          subtitle: Text(
                              "Pearly Products provide 100% customer satisfiction with their best product servicing."),
                          leading: Icon(Icons.person),
                        ),
                        ListTile(
                          title: Text("Joined Date"),
                          subtitle: Text("01 October 2023"),
                          leading: Icon(Icons.calendar_view_day),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            )
          ],
        ),
      ),
    );
  }
}