import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
          backgroundColor: MaterialStateProperty.all(Colors.grey.withAlpha(50)),
          elevation: MaterialStatePropertyAll(0),
          leading: Icon(Icons.search),
          hintText: "Search",
          shape: MaterialStatePropertyAll(
            BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          padding: MaterialStatePropertyAll(EdgeInsets.zero),
          trailing: [Icon(Icons.close)],
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              foregroundImage: AssetImage('assets/images/camera.jpg'),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            title: Text("search text"),
            trailing: IconButton(icon: Icon(Icons.close), onPressed: null),
          );
        },
      ),
    );
  }
}
