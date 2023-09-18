import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/features/main/home/data/model/news_response.dart';
import 'package:movies_app/features/main/movie/data/model/movie_response.dart';
import 'package:movies_app/features/main/movie/data/model/movies_response.dart';
import 'package:movies_app/features/main/movie/domain/repository/movies_repository.dart';

part 'movie_event.dart';

part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieBloc() : super(MovieState()) {
    on<GetMoviesEvent>(_getMovies);
    on<GetMovieEvent>(_getMovie);
  }

  final _moviesRepository = MoviesRepository();

  Future<void> _getMovies(
      GetMoviesEvent event, Emitter<MovieState> emit) async {
    final result = await _moviesRepository.getMovies();

    emit(state.copyWith(
      movies: result,
    ));
  }

  Future<void> _getMovie(GetMovieEvent event, Emitter<MovieState> emit) async {
    final result = await _moviesRepository.getMovie(event.id);

    emit(
      state.copyWith(movie: result),
    );
  }
}
