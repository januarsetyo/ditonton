part of 'watchlist_tv_cubit.dart';

@freezed
class WatchlistTvState with _$WatchlistTvState {
  const factory WatchlistTvState({
    @Default([]) List<Tv> watchlistTv,
    @Default(RequestState.Empty) RequestState watchlistState,
    @Default("") String message,
  }) = _State;
}
