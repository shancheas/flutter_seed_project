import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_seed_project/app/pages/second_route.dart';

import 'common.dart';
import 'route_name.dart';

class Routes {
  static Router app;

  static void configureRoutes(Router route) {

    //TODO: change Container() to Page Widget
    route.define(RouteName.dashboard, handler: SimpleHandler(Container()));
    route.define(RouteName.articles, handler: SimpleHandler(Container()));
    route.define(RouteName.login, handler: SimpleHandler(Container()), transitionType: TransitionType.nativeModal);

    route.define('${RouteName.articles}/:id/:title', handler: Handler(
        handlerFunc: (_, params) {
          return SecondRoute(
            title: params['title']?.first,
            id: params['id']?.first,
          );
        }
    ));

  }
}