part of 'movie_search_cubit.dart';

@freezed
class MovieSearchState with _$MovieSearchState {
  const factory MovieSearchState({
    @Default(RequestState.Empty) RequestState state,
    @Default([]) List<Movie> searchResult,
    @Default("") String message,
  }) = _State;
}
