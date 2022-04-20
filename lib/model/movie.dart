import 'package:flutter_application/repository/network/interface/base_network_model.dart';

class Movie extends BaseNetworkModel<Movie> {
  final int? id;
  final double? popularity;
  final String? title;
  final String? backPoster;
  final String? poster;
  final String? overview;
  final double? rating;

  Movie({this.id, this.popularity, this.title, this.backPoster, this.poster, this.overview, this.rating});

  @override
  Movie fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    return Movie(
        id: json['id'],
        popularity: json['popularity'],
        title: json['title'],
        backPoster: json['backdrop_path'],
        poster: json['poster_path'],
        overview: json['overview'],
        rating: json['vote_average']
    );
  }
}