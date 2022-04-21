// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      id: json['id'] as int?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      title: json['title'] as String?,
      backPoster: json['backdrop_path'] as String?,
      poster: json['poster_path'] as String?,
      overview: json['overview'] as String?,
      rating: (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'popularity': instance.popularity,
      'title': instance.title,
      'backdrop_path': instance.backPoster,
      'poster_path': instance.poster,
      'overview': instance.overview,
      'vote_average': instance.rating,
    };
