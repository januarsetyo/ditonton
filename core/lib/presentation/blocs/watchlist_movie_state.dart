part of 'watchlist_movie_cubit.dart';

@freezed
class WatchlistMovieState with _$WatchlistMovieState {
  const factory WatchlistMovieState({
    @Default([]) List<Movie> watchlistMovies,
    @Default(RequestState.Empty) RequestState watchlistState,
    @Default("") String message,
  }) = _State;
}
