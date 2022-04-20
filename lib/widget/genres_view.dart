import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/model/movie_response.dart';
import 'package:flutter_application/bloc/get_movies_bloc.dart';
import 'package:flutter_application/repository/freezed/network_error.dart';
import 'package:flutter_application/repository/freezed/result.dart';

class GenresView extends StatefulWidget {
  const GenresView({Key? key}) : super(key: key);

  @override
  _GenresViewState createState() => _GenresViewState();
}

class _GenresViewState extends State<GenresView> {
  @override
  void initState() {
    super.initState();

    moviesBloc.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Result<MovieResponse, NetworkError>>(
      stream: moviesBloc.subject.stream,
      builder: (context, AsyncSnapshot<Result<MovieResponse, NetworkError>> snapshot) {
        return snapshot.data?.when(
            success: (movies) {
              return Container();
            },
            failure: (error) {
              return Text(error.localizedErrorMessage ?? 'Error', style: TextStyle(color: Colors.white),);
            }
        ) ?? _buildLoadingWidget();
      },
    );
  }

  Widget _buildLoadingWidget() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 25,
            width: 25,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              strokeWidth: 4,
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    moviesBloc.dispose();
    super.dispose();
  }
}