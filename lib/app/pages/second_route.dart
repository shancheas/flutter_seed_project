import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  final String id;
  final String title;

  const SecondRoute({Key key, this.id, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Content id $id'),
      ),
    );
  }
}
