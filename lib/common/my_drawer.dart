import 'package:flutter/material.dart';

Drawer myDrawer() {
  return Drawer(
    child: SingleChildScrollView(
      child: Column(
        children: [
          ExpansionTile(
            initiallyExpanded: true,
            title: Text("Recently Visited"),
            trailing: TextButton(
              child: Text("See All"),
              onPressed: () {},
            ),
            children: [
              ListTile(
                leading: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircleAvatar(
                    radius: 100,
                    foregroundImage: AssetImage('assets/images/camera.jpg'),
                  ),
                ),
                title: Text("test"),
              ),
              ListTile(
                leading: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircleAvatar(
                    radius: 100,
                    foregroundImage: AssetImage('assets/images/camera.jpg'),
                  ),
                ),
                title: Text("test"),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Your Communities"),
            children: [
              ListTile(
                leading: Icon(Icons.add),
                title: Text("Create a Community"),
              ),
              ListTile(
                leading: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircleAvatar(
                    radius: 100,
                    foregroundImage: AssetImage('assets/images/camera.jpg'),
                  ),
                ),
                title: Text("test"),
              ),
              ListTile(
                leading: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircleAvatar(
                    radius: 100,
                    foregroundImage: AssetImage('assets/images/camera.jpg'),
                  ),
                ),
                title: Text("test"),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Following"),
            children: [
              ListTile(
                leading: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircleAvatar(
                    radius: 100,
                    foregroundImage: AssetImage('assets/images/camera.jpg'),
                  ),
                ),
                title: Text("test"),
              ),
              ListTile(
                leading: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircleAvatar(
                    radius: 100,
                    foregroundImage: AssetImage('assets/images/camera.jpg'),
                  ),
                ),
                title: Text("test"),
              ),
            ],
          ),
          ListTile(
            visualDensity: VisualDensity(vertical: 1),
            leading: Icon(Icons.all_out),
            title: Text("All"),
          ),
        ],
      ),
    ),
  );
}
