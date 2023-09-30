part of 'movie_bloc.dart';

@immutable
class MovieState extends Equatable {
  final GetMoviesResponse? movies;

  final MovieResponse? movie;

  final GetUsersStatus? getStatus;

  const MovieState({this.movies, this.movie, this.getStatus});

  MovieState copyWith(
      {GetMoviesResponse? movies, MovieResponse? movie, GetUsersStatus? getStatus}) {
    return MovieState(
      movies: movies ?? this.movies,
      movie: movie ?? this.movie,
      getStatus: getStatus??this.getStatus,
    );
  }

  @override
  List<Object?> get props => [movies, movie,getStatus];
}

enum GetUsersStatus { initial, loading, success, error }

extension GetUsersStatusX on GetUsersStatus {
  bool get initial => this == GetUsersStatus.initial;

  bool get isLoading => this == GetUsersStatus.loading;

  bool get isSuccess => this == GetUsersStatus.success;

  bool get isError => this == GetUsersStatus.error;
}