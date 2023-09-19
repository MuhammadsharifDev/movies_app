part of 'movie_bloc.dart';

@immutable
abstract class MovieEvent extends Equatable {
  const MovieEvent();
}
class GetMoviesEvent extends MovieEvent {
  const GetMoviesEvent();

  @override
  List<Object?> get props => [];
}

class GetMovieIdEvent extends MovieEvent{
  final String id;
  const GetMovieIdEvent(this.id);
  @override
  List<Object?> get props => [];
}

