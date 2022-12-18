part of 'tv_detail_cubit.dart';

@freezed
class TvDetailState with _$TvDetailState {
  const factory TvDetailState({
    TvDetail? tv,
    @Default(RequestState.Empty) RequestState tvState,
    @Default([]) List<Tv> tvRecommendations,
    @Default(RequestState.Empty) RequestState recommendationState,
    @Default("") String message,
    @Default(false) bool isAddedToWatchlist,
    @Default("") String watchlistMessage,
  }) = _State;
}
