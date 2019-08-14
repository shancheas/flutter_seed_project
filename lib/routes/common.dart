import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class SimpleHandler extends Handler {
  final Widget page;

  SimpleHandler(this.page)
      : super(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return page;
  });
}
