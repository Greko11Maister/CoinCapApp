import 'package:dio/dio.dart';

class ApiClient {

  final _dio;

  ApiClient(this._dio);

  Future <dynamic> get(String url) async {
    final Response response = await _dio.get(url);

    return response.data;
  }

  Future <dynamic> post(String url, data) async {
    final Response response = await _dio.post(url, data);

    return response.data;
  }

}