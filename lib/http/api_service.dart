import 'package:dio/dio.dart';
import 'package:flutter_seed_project/app/models/joke_model.dart';
import 'package:flutter_seed_project/config.dart';

import 'http.dart';

class ApiService {
  final bool debug;

  HttpService http;

  ApiService({this.debug = Config.debug}) {
    final List<Interceptor> middlewares = this.debug ? [LogInterceptor()] : [];
    http = HttpService.build(middlewares: middlewares);
  }

  Future<Joke> tellMeAJoke() {
    return http.get('jokes/random').then((response) => Joke.fromJson(response.data));
  }
}
