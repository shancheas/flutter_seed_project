import 'package:dio/dio.dart';
import 'package:flutter_seed_project/config.dart';

class HttpService extends Dio {
  final BaseOptions options;

  final List<Interceptor> middlewares;
  List<Interceptor> tmpMiddlewares = [];

  HttpService({this.options, this.middlewares}) : super(options) {
    this.interceptors.addAll(this.middlewares);
    this.interceptors.addAll(this.tmpMiddlewares);
  }

  factory HttpService.build({List<Interceptor> middlewares}) {
    BaseOptions optoins = BaseOptions(
        baseUrl: Config.baseUrl,
        connectTimeout: Config.timeout * 1000,
        receiveTimeout: Config.timeout * 1000);

    middlewares ??= [];
    middlewares?.removeWhere((middleware) => middleware == null);

    return HttpService(options: optoins, middlewares: middlewares);
  }

  Dio setMiddleware(middlewares) {
    if (middlewares is Iterable)
      tmpMiddlewares.addAll(middlewares);
    else
      tmpMiddlewares.add(middlewares);

    return this;
  }
}
