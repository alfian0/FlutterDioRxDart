import 'package:flutter_application/repository/network/interface/http_request_protocol.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'client_api.freezed.dart';

@freezed
class ClientApi extends HttpRequestProtocol with _$ClientApi {
  const ClientApi._() : super();
  const factory ClientApi.popularMovies(String apiKey, String language, int page) = _PopularMovies;
  const factory ClientApi.discoverMovies() = _DiscoverMovies;

  @override
  // TODO: implement baseUrl
  String get baseUrl => dotenv.env['BASE_URL'] ?? 'https://api.themoviedb.org/3';

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
      popularMovies: (apiKey, language, page) => '/movie/top_rated',
      discoverMovies: () => '/discover/movie',
      orElse: () => ''
    );
  }

  @override
  // TODO: implement queryParameters
  Map<String, dynamic>? get queryParameters {
    return this.maybeWhen(
      popularMovies: (apiKey, language, page) => { 'api_key': apiKey, 'language': language, 'page': page},
      orElse: () => null,
    );
  }
}