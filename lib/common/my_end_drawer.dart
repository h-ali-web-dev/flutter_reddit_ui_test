import 'package:flutter/material.dart';

Drawer myEndDrawer() => Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('assets/images/camera.jpg'),
              ),
            ),
            TextButton(onPressed: () {}, child: Text("username")),
            Container(
              width: 200,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(50),),
              child: TextButton(
                onPressed: () {},
                child: Text("Online Status: Off"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(colors: [Colors.red, Colors.orange]),
              ),
              child: ListTile(
                leading: Icon(Icons.flutter_dash),
                title: Text("Style Avatar", textAlign: TextAlign.center),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 120,
                        child: ListTile(
                          leading: Icon(Icons.flag_circle),
                          title: Text('1'),
                          subtitle: Text("Karma"),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: ListTile(
                          leading: Icon(Icons.cake),
                          title: Text('1y 1m'),
                          subtitle: Text("Reddit Age"),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.perm_contact_calendar_sharp),
                  title: Text("My Profile"),
                ),
                ListTile(
                  leading: Icon(Icons.post_add_outlined),
                  title: Text("Create a Community"),
                ),
                ListTile(
                  leading: Icon(Icons.account_balance_wallet),
                  title: Text("Contributor Program"),
                  subtitle: Row(
                    children: [Icon(Icons.arrow_upward), Text('0')],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.health_and_safety),
                  title: Text("Vault"),
                ),
                ListTile(
                  leading: Icon(Icons.shield_outlined),
                  title: Text("Premium"),
                  subtitle: Text("Ads-free browsing"),
                ),
                ListTile(
                  leading: Icon(Icons.bookmark),
                  title: Text("Saved"),
                ),
                ListTile(
                  leading: Icon(Icons.history),
                  title: Text("History"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
