import 'package:flutter/material.dart';
import 'package:flutter_reddit_ui_test/common/card_post.dart';
import 'package:flutter_reddit_ui_test/common/list_post.dart';
import 'package:flutter_reddit_ui_test/common/my_drawer.dart';
import 'package:flutter_reddit_ui_test/common/my_end_drawer.dart';
import 'package:flutter_reddit_ui_test/common/my_menubar.dart';
import 'package:flutter_reddit_ui_test/common/my_navigationbar.dart';
import 'package:flutter_reddit_ui_test/common/my_list_header.dart';
import 'package:flutter_reddit_ui_test/controller/state_controller.dart';
import 'package:flutter_reddit_ui_test/screens/search_page.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  StateController stateController = Get.put(StateController());

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: myMenuBar(),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SearchPage(),
                ),
              );
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              _openEndDrawer();
            },
            icon: Icon(Icons.person),
          ),
          IconButton(
            onPressed: () {
              Get.isDarkMode
                  ? Get.changeThemeMode(ThemeMode.light)
                  : Get.changeThemeMode(ThemeMode.dark);
            },
            icon: Icon(context.isDarkMode ? Icons.dark_mode : Icons.light_mode),
          ),
        ],
      ),
      drawer: myDrawer(),
      bottomNavigationBar: MyNavigationBar(),
      endDrawer: myEndDrawer(),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return index == 0
              ? MyListHeader()
              : Obx(
                  () => stateController.isCardView.value
                      ? CardPost()
                      : ListPost(),
                );
        },
      ),
    );
  }
}
