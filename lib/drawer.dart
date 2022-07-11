import 'package:fantasy_app/add_team.dart';
import 'package:fantasy_app/main.dart';
import 'package:fantasy_app/routes.dart';
import 'package:flutter/material.dart';
import './routes.dart';

Widget CreateDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Container(
          color: Color.fromARGB(126, 110, 179, 235),
          child: DrawerHeader(
            child: Text(
              'Select Page',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            Navigator.pushReplacementNamed(context, MyApp.routeName);
          },
        ),
        ListTile(
          leading: Icon(Icons.add),
          title: Text('Add Team'),
          onTap: () {
            Navigator.pushReplacementNamed(context, AddTeam.routeName);
          },
        ),
      ],
    ),
  );
}
