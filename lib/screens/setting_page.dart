import 'package:flutter/material.dart';
import 'package:flutter_reddit_ui_test/controller/state_controller.dart';
import 'package:get/get.dart';

class SettingPage extends StatelessWidget {
  SettingPage({super.key});
  StateController stateController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("General", style: TextStyle(fontSize: 16)),
          ),
          ListTile(
            tileColor: Colors.grey.withAlpha(50),
            leading:
                Icon(context.isDarkMode ? Icons.dark_mode : Icons.light_mode),
            title: Text("Dark Mode"),
            trailing: Switch(
              value: Get.isDarkMode,
              onChanged: (v) {
                Get.isDarkMode
                    ? Get.changeThemeMode(ThemeMode.light)
                    : Get.changeThemeMode(ThemeMode.dark);
              },
            ),
          ),
          ListTile(
            tileColor: Colors.grey.withAlpha(50),
            leading: Icon(Icons.calendar_view_day_rounded),
            title: Text("Default View"),
            trailing: DropdownMenu(
              width: 130,
              onSelected: (i) {
                stateController.isCardView.value = i == 2 ? true : false;
              },
              initialSelection: stateController.isCardView.value ? 2 : 1,
              inputDecorationTheme:
                  InputDecorationTheme(border: InputBorder.none),
              menuStyle: MenuStyle(
                elevation: MaterialStateProperty.all(0),
              ),
              dropdownMenuEntries: [
                DropdownMenuEntry(
                  value: 1,
                  label: "List View",
                  leadingIcon: Icon(Icons.calendar_view_day_sharp),
                ),
                DropdownMenuEntry(
                  value: 2,
                  label: "Card View",
                  leadingIcon: Icon(Icons.calendar_view_day_rounded),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
