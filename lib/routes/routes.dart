import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'common.dart';
import 'route_name.dart';

class Routes {
  static Router app;

  static void configureRoutes(Router route) {

    //TODO: change Container() to Page Widget
    route.define(RouteName.dashboard, handler: SimpleHandler(Container()));
    route.define(RouteName.articles, handler: SimpleHandler(Container()));
    route.define(RouteName.login, handler: SimpleHandler(Container()), transitionType: TransitionType.nativeModal);

    //TODO: change Text() to Page Widget with parameters
    route.define('${RouteName.articles}/:id', handler: Handler(
        handlerFunc: (_, params) => Text(params['id'][0])
    ));

  }
}