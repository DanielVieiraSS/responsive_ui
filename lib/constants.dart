import 'package:flutter/material.dart';

var myDefaultBackground = Color.fromARGB(255, 39, 47, 63);

var myAppBar = AppBar(
  backgroundColor: Color.fromARGB(255, 54, 65, 86),
);

var myDrawer = Drawer(
  backgroundColor: Color.fromARGB(255, 54, 65, 86),
  child: Column(children: const [
    DrawerHeader(child: Icon(Icons.favorite)),
    ListTile(
      textColor: Colors.white,
      leading: Icon(
        Icons.home,
        color: Colors.white,
      ),
      title: Text("D A S H B O A R D"),
    ),
    ListTile(
      textColor: Colors.white,
      leading: Icon(
        Icons.restaurant,
        color: Colors.white,
      ),
      title: Text("R E F E I Ç Õ E S"),
    ),
    ListTile(
      textColor: Colors.white,
      leading: Icon(
        Icons.fitness_center,
        color: Colors.white,
      ),
      title: Text("E X E R C Í C I O S"),
    ),
    ListTile(
      textColor: Colors.white,
      leading: Icon(
        Icons.calendar_month,
        color: Colors.white,
      ),
      title: Text("R O T I N A"),
    ),
    ListTile(
      textColor: Colors.white,
      leading: Icon(
        Icons.settings,
        color: Colors.white,
      ),
      title: Text("C O N F I G U R A Ç Õ E S"),
    ),
    ListTile(
      textColor: Colors.white,
      leading: Icon(
        Icons.logout,
        color: Colors.white,
      ),
      title: Text("L O G O U T"),
    ),
  ]),
);
