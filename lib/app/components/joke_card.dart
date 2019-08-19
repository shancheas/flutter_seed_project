import 'package:flutter/material.dart';
import 'package:flutter_seed_project/app/models/joke_model.dart';

class JokeCard extends StatelessWidget {
  final Joke joke;

  const JokeCard({Key key, this.joke}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(joke.setup),
        subtitle: Text(joke.punchline),
      ),
    );
  }
}