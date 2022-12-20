part of 'tv_search_cubit.dart';

@freezed
class TvSearchState with _$TvSearchState {
  const factory TvSearchState({
    @Default(RequestState.Empty) RequestState state,
    @Default([]) List<Tv> searchResult,
    @Default("") String message,
  }) = _State;
}
