import 'package:flutter/material.dart';
import 'package:flutter_seed_project/app/models/joke_model.dart';
import 'package:flutter_seed_project/http/api_service.dart';
import 'package:flutter_seed_project/routes/route.dart';

import 'joke_card.dart';

class AppComponents extends StatefulWidget {
  static final ApiService service = ApiService();

  @override
  _AppComponentsState createState() => _AppComponentsState();

  Future<Joke> tellMeAJoke() => service.tellMeAJoke();
}

class _AppComponentsState extends State<AppComponents> {
  Future<Joke> getAJoke;

  @override
  void initState() { 
    super.initState();
    getAJoke = widget.tellMeAJoke();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Seed Project')),
      body: Column(
        children: <Widget>[
          FutureBuilder(
            future: getAJoke,
            initialData: null,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return JokeCard(joke: snapshot.data);
              }
              return Card(
                child: CircularProgressIndicator(),
              );
            },
          ),
          RaisedButton(
            child: Text('Go to Second Route'),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('${RouteName.articles}/1/Hello World');
            },
          )
        ],
      ),
    );
  }
}
