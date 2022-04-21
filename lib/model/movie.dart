import 'package:flutter_application/repository/network/interface/base_network_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'movie.g.dart';

@JsonSerializable()
class Movie extends BaseNetworkModel<Movie> {
  final int? id;
  final double? popularity;
  final String? title;
  @JsonKey(name: 'backdrop_path')
  final String? backPoster;
  @JsonKey(name: 'poster_path')
  final String? poster;
  final String? overview;
  @JsonKey(name: 'vote_average')
  final double? rating;

  Movie({this.id, this.popularity, this.title, this.backPoster, this.poster, this.overview, this.rating});

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);

  @override
  Movie fromJson(Map<String, dynamic> json) {
    return Movie.fromJson(json);
  }
}