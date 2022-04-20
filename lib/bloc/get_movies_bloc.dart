import 'package:flutter_application/model/movie_response.dart';
import 'package:flutter_application/repository/client_api.dart';
import 'package:flutter_application/repository/freezed/network_error.dart';
import 'package:flutter_application/repository/freezed/result.dart';
import 'package:flutter_application/repository/network/layer/network_executer.dart';
import 'package:rxdart/rxdart.dart';

class MoviesListBloc {
  final BehaviorSubject<Result<MovieResponse, NetworkError>> _subject = BehaviorSubject<Result<MovieResponse, NetworkError>>();

  getMovies() async {
    Result<MovieResponse, NetworkError> response = await NetworkExecuter.shared.execute<MovieResponse, MovieResponse>(
        route: ClientApi.popularMovies(),
        responseType: MovieResponse()
    );
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<Result<MovieResponse, NetworkError>> get subject => _subject;
}

final moviesBloc = MoviesListBloc();