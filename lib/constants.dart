import 'package:flutter/material.dart';

var defaultBackgroundColor = Colors.white;
var appBarColor = Colors.
black;
var myAppBar = AppBar(
  backgroundColor: Colors.white,
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
  elevation: 0,
  actions: [
    Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 10,
            ),
            Text(
              'HUMMING',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "BIRD",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        const SizedBox(width: 25,),
      ],
    )
  ],
);
var drawerTextColor = const TextStyle(
  color: Colors.black,
);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  elevation: 0,
  child: Column(
    children: [
      Container(
        height: 200,
        width: double.infinity,
        color: Colors.green,
        child: const Center(
          child: Text("Drawer not now\n      salom",),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(
            Icons.info,
            color: Colors.black,
          ),
          title: Text(
            'Info',
            style: drawerTextColor,
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(
            Icons.messenger,
            color: Colors.black,
          ),
          title: Text(
            'About',
            style: drawerTextColor,
          ),
        ),
      ),
    ],
  ),
);