import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'app/components/app_components.dart';
import 'routes/route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  MyApp() {
    final router = Router();
    Routes.app = router;
    Routes.configureRoutes(router);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Routes.app.generator,
      home: AppComponents(),
    );
  }
}