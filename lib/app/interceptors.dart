import 'package:dio/dio.dart';

class SofomoGithubInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final headers = {
      'Accept': 'application/vnd.github+json',
      'X-GitHub-Api-Version': '2022-11-28',
    };
    options.headers.addAll(headers);
    return super.onRequest(options, handler);
  }
}
