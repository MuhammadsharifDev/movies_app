part of 'home_bloc.dart';

@immutable
class HomeState extends Equatable {
  final GetMovieResponse? getMovieResponse;

  const HomeState({this.getMovieResponse});

  HomeState copyWith({GetMovieResponse? getMovieResponse}) {
    return HomeState(
        getMovieResponse: getMovieResponse ?? this.getMovieResponse);
  }

  @override
  List<Object?> get props => [getMovieResponse];
}
