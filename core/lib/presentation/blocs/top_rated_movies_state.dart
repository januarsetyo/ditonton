part of 'top_rated_movies_cubit.dart';

@freezed
class TopRatedMoviesState with _$TopRatedMoviesState {
  const factory TopRatedMoviesState({
    @Default(RequestState.Empty) RequestState state,
    @Default([]) List<Movie> movies,
    @Default("") String message,
  }) = _State;
}
