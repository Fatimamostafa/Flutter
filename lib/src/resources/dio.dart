import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_basics/src/models/company_haltrip.dart';

class DioSingleton {
  static const String BASE_URL = "http://august.travnx.com/api/";
  static final DioSingleton _singleton = new DioSingleton._internal();

  DioSingleton._internal();


  static DioSingleton get instance => _singleton;
  Dio dio;

  void update(String token) {
    Options options = new Options(
        headers: {"Authorization": token},
        baseUrl: BASE_URL,
        connectTimeout: 15000,
        receiveTimeout: 15000);
    dio.options = options;
  }

  void create() {
    Options options = new Options(
        baseUrl: BASE_URL, connectTimeout: 15000, receiveTimeout: 15000);

    dio = new Dio(options);

    dio.interceptor.request.onSend = (Options options) {
// Do something before request is sent
      print("Dio Request");
      print(options.headers);
      print(options.data);
      print(options.contentType);
      print(options.extra);
      print(options.baseUrl + "" + options.path);
      return options; //continue
// If you want to resolve the request with some custom data，
// you can return a `Response` object or return `dio.resolve(data)`.
// If you want to reject the request with a error message,
// you can return a `DioError` object or return `dio.reject(errMsg)`
    };
    dio.interceptor.response.onSuccess = (Response response) {
      print("Dio Success Response");
      print(response.data);
      print(response.headers);
      print(response.extra);
      return response; // continue
    };
    dio.interceptor.response.onError = (DioError e) {
      print("Dio Error Response");
      print(e.response);
      print(e.message);
      //print(e.response.headers);
      print(e.stackTrace);
      print(e.type);

      return e;
    };
  }

  void throwIfNoSuccess(Response response) {
    if (response.statusCode < 200 || response.statusCode > 299) {
      throw new HttpException(response.data);
    }
  }


  Future<Company> fetchCompany() async {
    Response response = await DioSingleton.instance.dio.get("company");
    return Company.fromJson(response.data);
  }
}