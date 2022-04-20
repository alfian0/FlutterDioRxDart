import 'package:flutter_application/model/movie.dart';
import 'package:flutter_application/repository/network/interface/base_network_model.dart';

class MovieResponse extends BaseNetworkModel<MovieResponse> {
  final List<Movie>? movies;

  MovieResponse({this.movies});

  @override
  MovieResponse fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    return MovieResponse(movies: (json['results'] as List).map((i) => Movie().fromJson(i)).toList());
  }
}