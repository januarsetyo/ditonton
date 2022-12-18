part of 'movie_list_cubit.dart';

@freezed
class MovieListState with _$MovieListState {
  const factory MovieListState(
      {@Default([]) List<Movie> nowPlayingMovies,
      @Default(RequestState.Empty) RequestState nowPlayingState,
      @Default([]) List<Movie> popularMovies,
      @Default(RequestState.Empty) RequestState popularMoviesState,
      @Default([]) List<Movie> topRatedMovies,
      @Default(RequestState.Empty) RequestState topRatedMoviesState,
      @Default("") String message}) = _State;
}
