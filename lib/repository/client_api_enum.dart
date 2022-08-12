import 'package:flutter_application/repository/network/interface/http_request_protocol.dart';

// enum ClientApis {
//   popularMovies,
//   discoverMovies
// }

// mixin NetworkProtocol {
//   String get baseUrl;
//   String get path;
//   HttpMethod get method;
//   Map<String, String>? get headers;
//   Map<String,dynamic>? get queryParameters;
//   Map<String, dynamic>? get body;
//   int? get sendTimeout => 30000;
//   int? get receiveTimeOut => 30000;
// }

// extension ClientApisExtension on ClientApis {
//   String get baseUrl {
//     switch (this) {
//       default:
//         return "https://api.themoviedb.org/3";
//     }
//   }
//
//   Map<String, dynamic>? get body {
//     switch (this) {
//       default: null;
//     }
//   }
//
//   Map<String, String>? get headers {
//     switch (this) {
//       default:
//         return { "Content-Type": "application/json" };
//     }
//   }
//
//   HttpMethod get method {
//     switch (this) {
//       default:
//         return HttpMethod.GET;
//     }
//   }
//
//   String get path {
//     switch (this) {
//       case ClientApis.popularMovies:
//         return "/movie/top_rated";
//       case ClientApis.discoverMovies:
//         return "/discover/movie";
//     }
//   }
//
//   Map<String, dynamic>? get queryParameters {
//     switch (this) {
//       case ClientApis.popularMovies:
//         return { 'api_key': '97d6484898db52712cf7cd8c9c2f985b', 'language': 'en-US', 'page': 1};
//       default:
//         return null;
//     }
//   }
// }