part of 'movie_bloc.dart';

@immutable
class MovieState extends Equatable {
  final GetMoviesResponse? movies;
  final GetMovieResponse? movie;
  final List<Docs>? searchMovies;

  const MovieState({this.movies,this.movie,this.searchMovies});

  MovieState copyWith({
    GetMoviesResponse? movies,
    GetMovieResponse? movie,
    List<Docs>? searchMovies
  }) {
    return MovieState(
        movies: movies ?? this.movies,searchMovies: searchMovies??this.searchMovies

    );
  }

  @override
  List<Object?> get props => [movies,movie,searchMovies];
}