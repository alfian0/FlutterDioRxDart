import 'package:flutter_application/repository/network/interface/http_request_protocol.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'client_api.freezed.dart';

@freezed
class ClientApi extends HttpRequestProtocol with _$ClientApi {
  const ClientApi._() : super();
  const factory ClientApi.popularMovies() = _PopularMovies;
  const factory ClientApi.discoverMovies() = _DiscoverMovies;

  @override
  // TODO: implement baseUrl
  String get baseUrl => 'https://api.themoviedb.org/3';

  @override
  // TODO: implement body
  Map<String, dynamic>? get body {
    return this.maybeWhen(
      orElse: () => null,
    );
  }

  @override
  // TODO: implement headers
  Map<String, String>? get headers => { "Content-Type": "application/json" };

  @override
  // TODO: implement method
  HttpMethod get method {
    return this.maybeWhen<HttpMethod>(
      orElse: () => HttpMethod.GET,
    );
  }

  @override
  // TODO: implement path
  String get path {
    return this.maybeWhen<String>(
      popularMovies: () => '/movie/top_rated',
      discoverMovies: () => '/discover/movie',
      orElse: () => ''
    );
  }

  @override
  // TODO: implement queryParameters
  Map<String, dynamic>? get queryParameters {
    return this.maybeWhen(
      popularMovies: () => { 'api_key': '97d6484898db52712cf7cd8c9c2f985b', 'language': 'en-US', 'page': 1},
      orElse: () => null,
    );
  }
}