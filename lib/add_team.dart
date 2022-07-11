import 'package:flutter/material.dart';
import './drawer.dart';

class AddTeam extends StatelessWidget {
  static const String routeName = '/AddTeam';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a Team'),
        centerTitle: true,
      ),
      drawer: CreateDrawer(context),
    );
  }
}
