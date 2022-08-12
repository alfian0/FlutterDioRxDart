import 'package:dio/dio.dart';
import 'package:flutter_application/repository/network/interface/base_network_model.dart';

class NetworkDecoder {
  static var shared = NetworkDecoder();

  K decode<K>({required Response<dynamic> response, required K responseType}) {
    try {
      if (response.data is List) {
        var list = response.data as List;
        var dataList = List<K>.from(list.map((item) => (responseType as BaseNetworkModel).fromJson(item)).toList()) as K;
        return dataList;
      } else {
        return (responseType as BaseNetworkModel).fromJson(response.data);
      }
    } on TypeError catch (e) {
      rethrow;
    }
  }
}