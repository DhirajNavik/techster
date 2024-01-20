import 'package:dio/dio.dart';
import 'dart:developer';

class NetworkRequester {
  late Dio _dio;


  NetworkRequester() {
    prepareRequest();
  }

  void prepareRequest() {
    BaseOptions dioOptions = BaseOptions(
      connectTimeout: Duration(seconds: 300),
      receiveTimeout: Duration(seconds: 300),
      baseUrl: "",
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
      headers: {'Accept': Headers.jsonContentType},
    );

    _dio = Dio(dioOptions);

    _dio.interceptors.clear();

    _dio.interceptors.add(LogInterceptor(
      error: true,
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: false,
      logPrint: _printLog,
    ));
  }

 

  _printLog(Object object) => log(object.toString());


  Future<dynamic> get({
    required String path,
    Map<String, dynamic>? query,
    String? token, // Add a token parameter
  }) async {
    try { 
      final response =
          await _dio.get(path, queryParameters: query);
      return response.data;
    } on DioException catch (dioError) {
      return print("$dioError 11212");
    }
  }
}
