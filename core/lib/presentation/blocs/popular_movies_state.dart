part of 'popular_movies_cubit.dart';

@freezed
class PopularMoviesState with _$PopularMoviesState {
  const factory PopularMoviesState({
    @Default(RequestState.Empty) RequestState state,
    @Default([]) List<Movie> movies,
    @Default("") String message,
  }) = _State;
}
