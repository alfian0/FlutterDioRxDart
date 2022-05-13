import 'package:dio/dio.dart';
import 'package:flutter_application/repository/freezed/network_error.dart';
import 'package:flutter_application/repository/freezed/result.dart';
import 'package:flutter_application/repository/network/interface/base_network_model.dart';
import 'package:flutter_application/repository/network/interface/http_request_protocol.dart';
import 'package:flutter_application/repository/network/layer/network_connectivity.dart';
import 'package:flutter_application/repository/network/layer/network_creator.dart';
import 'package:flutter_application/repository/network/layer/network_decoder.dart';
import 'package:flutter_application/repository/network/option/network_option.dart';

class NetworkExecuter {
  static var shared = NetworkExecuter();

  bool debugMode = true;

  Future<Result<K, NetworkError>> execute<T extends BaseNetworkModel, K>({required HttpRequestProtocol route, required T responseType, NetworkOptions? options}) async {
    if(debugMode) print(route);

    // Check Network Connectivity
    if (await NetworkConnectivity.status) {

      try {
        var response = await NetworkCreator.shared.request(route: route,options: options);
        var data = NetworkDecoder.shared.decode<T, K>(response: response, responseType: responseType);
        return Result.success(data);

        // NETWORK ERROR
      } on DioError catch (diorError) {
        if(debugMode) print("$route => ${NetworkError.request(error: diorError)}");
        return Result.failure(NetworkError.request(error: diorError));

        // TYPE ERROR
      } on TypeError catch (e) {
        if(debugMode) print("$route => ${NetworkError.type(error: e.toString())}");
        return Result.failure(NetworkError.type(error: e.toString()));
      }

      // No Internet Connection
    } else {
      if(debugMode) print(NetworkError.connectivity(message: 'No Internet Connection'));
      return Result.failure(NetworkError.connectivity(message: 'No Internet Connection'));
    }
  }

  Future<Result<K, NetworkError>> executes<K>({required HttpRequestProtocol route, required K responseType, NetworkOptions? options}) async {
    if(debugMode) print(route);

    // Check Network Connectivity
    if (await NetworkConnectivity.status) {

      try {
        var response = await NetworkCreator.shared.request(route: route,options: options);
        var data = NetworkDecoder.shared.decodes<K>(response: response, responseType: responseType);
        return Result.success(data);

        // NETWORK ERROR
      } on DioError catch (diorError) {
        if(debugMode) print("$route => ${NetworkError.request(error: diorError)}");
        return Result.failure(NetworkError.request(error: diorError));

        // TYPE ERROR
      } on TypeError catch (e) {
        if(debugMode) print("$route => ${NetworkError.type(error: e.toString())}");
        return Result.failure(NetworkError.type(error: e.toString()));
      }

      // No Internet Connection
    } else {
      if(debugMode) print(NetworkError.connectivity(message: 'No Internet Connection'));
      return Result.failure(NetworkError.connectivity(message: 'No Internet Connection'));
    }
  }
}