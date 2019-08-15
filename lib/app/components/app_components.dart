import 'package:flutter/material.dart';
import 'package:flutter_seed_project/routes/route.dart';

class AppComponents extends StatefulWidget {
  @override
  _AppComponentsState createState() => _AppComponentsState();
}

class _AppComponentsState extends State<AppComponents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Seed Project')),
      body: Center(
        child: RaisedButton(
          child: Text('Go to Second Route'),
          onPressed: () {
            Navigator.of(context).pushNamed('${RouteName.articles}/1/Hello World');
          },
        ),
      ),
    );
  }
}
