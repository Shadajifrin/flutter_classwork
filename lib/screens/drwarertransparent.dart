import 'package:flutter/material.dart';

class Drawer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.transparent,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildSignOutContainer(context),
              buildMenuItems(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) => Container(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(
                top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 52,
                  backgroundImage: NetworkImage("https://tse3.mm.bing.net/th?id=OIP.PztowP3ljup0SM75tkDimQHaHa&pid=Api&P=0&h=180"),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Bongani Nkosi",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                Text(
                  "nkosilebogang@gmail.com",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildSignOutContainer(BuildContext context) => Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(8),
          color: Colors.transparent,
        ),
        child: Center(
          child: Text(
            "Sign Out",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
              leading: Icon(Icons.edit, color: Colors.white),
              title: Text("Add Leads", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.star, color: Colors.white),
              title: Text("Points Redemption", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.exposure_plus_1_outlined, color: Colors.white),
              title: Text("Points", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text("Profile", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.dashboard, color: Colors.white),
              title: Text("Dashboard", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.home_outlined, color: Colors.white),
              title: Text("Home", style: TextStyle(color: Colors.white)),
            ),
            const Divider(
              color: Colors.white,
            ),
            Text(
              "Communicate",
              style: TextStyle(color: Colors.white),
            ),
            ListTile(
              leading: Icon(Icons.lock, color: Colors.white),
              title: Text("Privacy Policy", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.white),
              title: Text("Contact Us", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text("About apps", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      );
}
