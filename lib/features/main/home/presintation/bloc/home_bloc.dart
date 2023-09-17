import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/features/main/home/data/model/news_response.dart';

import '../../domain/news_repository.dart';


part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<GetMoviesEvent>(_getMovie);
  }

  final _newsRepository = NewsRepository();

  Future<void> _getMovie(GetMoviesEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(getStatus: Status.loading));
    final result = await _newsRepository.getMovies();
    emit(state.copyWith(getMovieResponse: result,getStatus: Status.success));
  }
}
