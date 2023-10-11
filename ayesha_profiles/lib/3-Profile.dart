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

  List<String> avatars = [
    'assets/images/ProfilePic1.jpg',
    'assets/images/ProfilePic2.jpg',
    // Add more URLs as needed
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              margin: const EdgeInsets.only(top: 30),
              height: 380,
              decoration: const BoxDecoration(
                color: Colors.pink,
              ),
            ),
          ),
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              height: 380,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('assets/images/ProfilePic.jpg'), fit: BoxFit.cover),
              ),
              foregroundDecoration:
              BoxDecoration(color: Colors.pink.withOpacity(0.8)),
            ),
          ),
          ListView(
            padding: const EdgeInsets.all(8.0),
            children: [
              const SizedBox(height: 90),
              _buildAvatar(avatars[0]),
              const SizedBox(height: 10.0),
              Text(
                "Ayesha Habib",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5.0),
              const Text(
                "Flutter Developer",
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10.0),
              Card(
                color: Colors.white,
                elevation: 0,
                margin: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 32.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "255K",
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              "Followers",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "105K",
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              "Following",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                "Favorite",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildFavoriteCard(context, "Design"),
                    const SizedBox(width: 10.0),
                    _buildFavoriteCard(context, "Fruits"),
                    const SizedBox(width: 10.0),
                    _buildFavoriteCard(context, "Nature"),
                    const SizedBox(width: 10.0),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                "Friends",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: Stack(
                  children: [
                    ...avatars
                        .asMap()
                        .map(
                          (i, e) => MapEntry(
                        i,
                        Transform.translate(
                          offset: Offset(i * 30.0, 0),
                          child: SizedBox(
                              height: 60,
                              width: 60,
                              child: _buildAvatar(e, radius: 30)),
                        ),
                      ),
                    )
                        .values
                        .toList(),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  CircleAvatar _buildAvatar(String image, {double radius = 80}) {
    return CircleAvatar(
      backgroundColor: Colors.yellow,
      radius: radius,
      child: CircleAvatar(
        radius: radius - 2,
        backgroundImage: NetworkImage('assets/images/ProfilePic.jpg'),
      ),
    );
  }

  Widget _buildFavoriteCard(BuildContext context, String title) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10.0),
            ),
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(10.0),
            ),
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 4.0,
            ),
          ),
          Container(
            clipBehavior: Clip.antiAlias,
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('assets/images/ProfilePic1.jpg'), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10.0)),
            foregroundDecoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10.0)),
          ),
          Container(
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 20),
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}


class OvalBottomBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Radius for the oval shape
    final double radius = size.width / 2;

    // Start from the top-left corner
    path.moveTo(0, 0);

    // Line to the top-right corner
    path.lineTo(size.width, 0);

    // Arc to create the oval shape
    path.arcToPoint(
      Offset(0, 0),
      radius: Radius.circular(radius),
      clockwise: false,
    );

    // Close the path
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
