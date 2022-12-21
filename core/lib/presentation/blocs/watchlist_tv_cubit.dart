import 'package:bloc/bloc.dart';
import 'package:core/common/state_enum.dart';
import 'package:core/domain/entities/tv.dart';
import 'package:core/domain/usecases/get_watchlist_tv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'watchlist_tv_state.dart';

part 'watchlist_tv_cubit.freezed.dart';

class WatchlistTvCubit extends Cubit<WatchlistTvState> {
  final GetWatchlistTv getWatchlistTv;

  WatchlistTvCubit({required this.getWatchlistTv})
      : super(const WatchlistTvState());

  Future<void> fetchWatchlistTv() async {
    emit(state.copyWith(watchlistState: RequestState.Loading));

    final result = await getWatchlistTv.execute();
    result.fold(
          (failure) {
        emit(state.copyWith(
          watchlistState: RequestState.Error,
          message: failure.message,
        ));
      },
          (moviesData) {
        if (moviesData.isEmpty) {
          emit(state.copyWith(watchlistState: RequestState.Empty));
        } else {
          emit(state.copyWith(
            watchlistState: RequestState.Loaded,
            watchlistTv: moviesData,
          ));
        }
      },
    );
  }
}
