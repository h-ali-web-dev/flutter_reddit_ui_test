import 'package:flutter/material.dart';

MenuBar myMenuBar() {
  return MenuBar(
    style: MenuStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor:
            MaterialStateProperty.all(Colors.black12.withAlpha(20)),),
    children: [
      SubmenuButton(
        trailingIcon: Icon(Icons.keyboard_arrow_down),
        menuChildren: [
          MenuItemButton(
            leadingIcon: Icon(Icons.home),
            style: ButtonStyle(
                visualDensity: VisualDensity(horizontal: 4),
                fixedSize: MaterialStateProperty.all(Size.fromWidth(200)),),
            onPressed: () {},
            child: MenuAcceleratorLabel("Home"),
          ),
          MenuItemButton(
            leadingIcon: Icon(Icons.trending_up),
            style: ButtonStyle(
                visualDensity: VisualDensity(horizontal: 4),
                fixedSize: MaterialStateProperty.all(Size.fromWidth(200)),),
            onPressed: () {},
            child: Text("Popular"),
          ),
          MenuItemButton(
            leadingIcon: Icon(Icons.live_tv),
            style: ButtonStyle(
                visualDensity: VisualDensity(horizontal: 4),
                fixedSize: MaterialStateProperty.all(Size.fromWidth(200)),),
            child: MenuAcceleratorLabel("Watch"),
          ),
          MenuItemButton(
            leadingIcon: Icon(Icons.star_border_outlined),
            style: ButtonStyle(
                visualDensity: VisualDensity(horizontal: 4),
                fixedSize: MaterialStateProperty.all(Size.fromWidth(200)),),
            child: MenuAcceleratorLabel("Latest"),
          ),
        ],
        child: MenuAcceleratorLabel("Home"),
      ),
    ],
  );
}
