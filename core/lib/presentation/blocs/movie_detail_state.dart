part of 'movie_detail_cubit.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  const factory MovieDetailState({
    MovieDetail? movie,
    @Default(RequestState.Empty) RequestState movieState,
    @Default([]) List<Movie> movieRecommendations,
    @Default(RequestState.Empty) RequestState recommendationState,
    @Default("") String message,
    @Default(false) bool isAddedToWatchlist,
    @Default("") String watchlistMessage,
  }) = _State;
}
