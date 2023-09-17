import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/features/main/home/data/model/movies_response.dart';

import '../../domain/movies_repository.dart';


part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<GetMoviesEvent>(_getMovie);
  }

  final _moviesRepository = MoviesRepository();

  Future<void> _getMovie(GetMoviesEvent event, Emitter<HomeState> emit) async {
    final result = await _moviesRepository.getMovies();
    emit(state.copyWith(getMovieResponse: result));
  }
}
