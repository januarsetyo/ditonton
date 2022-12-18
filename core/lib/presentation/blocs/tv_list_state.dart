part of 'tv_list_cubit.dart';

@freezed
class TvListState with _$TvListState {
  const factory TvListState({
    @Default([]) List<Tv> popularTv,
    @Default(RequestState.Empty) RequestState popularState,
    @Default([]) List<Tv> nowPlayingTv,
    @Default(RequestState.Empty) RequestState nowPlayingState,
    @Default([]) List<Tv> topRatedTv,
    @Default(RequestState.Empty) RequestState topRatedState,
    @Default("") String message,
}) = _State;

}
