import 'package:dio/dio.dart';

class LogInterceptor extends Interceptor {
  @override
  onRequest(RequestOptions options) {
    Map<String, dynamic> option = {
      'url': options.uri,
      'header': options.headers,
      'params': options.queryParameters
    };

    print('reqest: $option');
  }

  @override
  onResponse(Response response) {
    print('response: $response');
  }
}
