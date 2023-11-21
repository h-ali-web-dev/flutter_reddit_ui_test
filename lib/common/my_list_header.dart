import 'package:flutter/material.dart';
import 'package:flutter_reddit_ui_test/controller/state_controller.dart';
import 'package:get/get.dart';

class MyListHeader extends StatefulWidget {
  const MyListHeader({
    super.key,
  });

  @override
  State<MyListHeader> createState() => _MyListHeaderState();
}

class _MyListHeaderState extends State<MyListHeader> {
  StateController stateController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Colors.grey)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("View Style"),
          DropdownMenu(
            onSelected: (i) {
              stateController.isCardView.value = i == 2 ? true : false;
            },
            initialSelection: 1,
            inputDecorationTheme:
                InputDecorationTheme(border: InputBorder.none),
            menuStyle: MenuStyle(
              elevation: MaterialStateProperty.all(0),
            ),
            leadingIcon: (Obx(
              () => Icon(
                stateController.isCardView.value
                    ? Icons.calendar_view_day_rounded
                    : Icons.calendar_view_day,
              ),
            )),
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
        ],
      ),
    );
  }
}
