part of 'movie_bloc.dart';

@immutable
class MovieState extends Equatable {
  final GetMoviesResponse? movies;
  final GetMovieResponse? movie;


  const MovieState({this.movies,this.movie,});

  MovieState copyWith({
    GetMoviesResponse? movies,
    NewsResponse? movie,
  }) {
    return MovieState(
        movies: movies ?? this.movies,

    );
  }

  @override
  List<Object?> get props => [movies,movie,];
}