part of 'movie_bloc.dart';

@immutable
class MovieState extends Equatable {
  final GetMoviesResponse? movies;

final MovieResponse? movie;
  const MovieState({this.movies,this.movie});

  MovieState copyWith({
    GetMoviesResponse? movies,
    MovieResponse? movie
  }) {
    return MovieState(
        movies: movies ?? this.movies,
      movie: movie??this.movie,
    );
  }

  @override
  List<Object?> get props => [movies,movie];
}