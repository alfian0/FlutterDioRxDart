import 'package:flutter_application/model/movie.dart';
import 'package:flutter_application/repository/network/interface/base_network_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'movie_response.g.dart';

@JsonSerializable()
class MovieResponse extends BaseNetworkModel<MovieResponse> {
  @JsonKey(name: 'results')
  final List<Movie>? movies;

  MovieResponse({this.movies});

  factory MovieResponse.fromJson(Map<String, dynamic> json) => _$MovieResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieResponseToJson(this);

  @override
  MovieResponse fromJson(Map<String, dynamic> json) {
    return MovieResponse.fromJson(json);
  }
}