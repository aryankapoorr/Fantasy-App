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
          color: Colors.blue,
          child: DrawerHeader(
            child: Text(
              'Select Page',
              style: TextStyle(fontSize: 20, color: Colors.white),
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
