import 'package:bloc/bloc.dart';
import 'package:core/common/state_enum.dart';
import 'package:core/domain/entities/tv_detail.dart';
import 'package:core/domain/usecases/get_tv_detail.dart';
import 'package:core/domain/usecases/get_tv_recomendations.dart';
import 'package:core/domain/usecases/get_watch_list_status_tv.dart';
import 'package:core/domain/usecases/remove_watch_list_tv.dart';
import 'package:core/domain/usecases/save_watchlist_tv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/tv.dart';

part 'tv_detail_state.dart';

part 'tv_detail_cubit.freezed.dart';

class TvDetailCubit extends Cubit<TvDetailState> {
  static const watchlistAddSuccessMessage = 'Added to Watchlist';
  static const watchlistRemoveSuccessMessage = 'Removed from Watchlist';

  final GetTvDetail getTvDetail;
  final GetTvRecommendations getTvRecommendations;
  final GetWatchListStatusTv getWatchListStatus;
  final SaveWatchlistTv saveWatchlist;
  final RemoveWatchlistTv removeWatchlist;

  TvDetailCubit({
    required this.getTvDetail,
    required this.getTvRecommendations,
    required this.getWatchListStatus,
    required this.saveWatchlist,
    required this.removeWatchlist,
  }) : super(const TvDetailState());

  Future<void> fetchTvDetail(int id) async {
    emit(state.copyWith(tvState: RequestState.Loading));

    final detailResult = await getTvDetail.execute(id);
    final recommendationResult = await getTvRecommendations.execute(id);
    detailResult.fold(
      (failure) {
        emit(state.copyWith(
          tvState: RequestState.Error,
          message: failure.message,
        ));
      },
      (tv) {
        emit(state.copyWith(
          recommendationState: RequestState.Loading,
          tv: tv,
        ));
        recommendationResult.fold(
          (failure) {
            emit(state.copyWith(
              recommendationState: RequestState.Error,
              message: failure.message,
            ));
          },
          (tv) {
            emit(state.copyWith(
              recommendationState: RequestState.Loaded,
              tvRecommendations: tv,
            ));
          },
        );
        emit(state.copyWith(
          tvState: RequestState.Loaded,
          tv: tv,
        ));
      },
    );
  }

  Future<void> addWatchlist(TvDetail movie) async {
    final result = await saveWatchlist.execute(movie);

    final message = result.fold(
      (failure) => failure.message,
      (successMessage) => successMessage,
    );

    await loadWatchlistStatus(movie.id, message);
  }

  Future<void> removeFromWatchlist(TvDetail movie) async {
    final result = await removeWatchlist.execute(movie);

    final message = result.fold(
      (failure) => failure.message,
      (successMessage) => successMessage,
    );

    await loadWatchlistStatus(movie.id, message);
  }

  Future<void> loadWatchlistStatus(int id, [String? message]) async {
    final result = await getWatchListStatus.execute(id);
    emit(state.copyWith(
      watchlistMessage: message ?? state.watchlistMessage,
      isAddedToWatchlist: result,
    ));
  }
}
