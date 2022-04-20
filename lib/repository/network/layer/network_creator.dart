import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_application/repository/network/interface/http_request_protocol.dart';
import 'package:flutter_application/repository/network/option/network_option.dart';

class NetworkCreator {
  static var shared = NetworkCreator();

  final Dio _client = Dio();

  Future<Response> request({required HttpRequestProtocol route, NetworkOptions? options}) {
    return _client.fetch(RequestOptions(
        baseUrl: route.baseUrl,
        path: route.path,
        method: route.method.value,
        queryParameters: route.queryParameters,
        data: route.body,
        sendTimeout: route.sendTimeout,
        receiveTimeout: route.receiveTimeOut,
        onReceiveProgress: options?.onReceiveProgress,
        validateStatus: (statusCode) => (statusCode! >= HttpStatus.ok && statusCode <= HttpStatus.multipleChoices)
    ));
  }
}