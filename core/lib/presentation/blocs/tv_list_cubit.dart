import 'package:bloc/bloc.dart';
import 'package:core/common/state_enum.dart';
import 'package:core/domain/entities/tv.dart';
import 'package:core/domain/usecases/get_now_playing_tv.dart';
import 'package:core/domain/usecases/get_popular_tv.dart';
import 'package:core/domain/usecases/get_top_rated_tv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_list_state.dart';

part 'tv_list_cubit.freezed.dart';

class TvListCubit extends Cubit<TvListState> {
  final GetPopularTv getPopularTv;
  final GetNowPlayingTv getNowPlayingTv;
  final GetTopRatedTv getTopRatedTv;

  TvListCubit({
    required this.getPopularTv,
    required this.getNowPlayingTv,
    required this.getTopRatedTv,
  }) : super(const TvListState());

  Future<void> fetchNowPlayingTv() async {
    emit(state.copyWith(nowPlayingState: RequestState.Loading));

    final result = await getNowPlayingTv.execute();
    result.fold(
          (failure) {
        emit(state.copyWith(
          nowPlayingState: RequestState.Error,
          message: failure.message,
        ));
      },
          (tvData) {
        emit(state.copyWith(
          nowPlayingState: RequestState.Loaded,
          nowPlayingTv: tvData,
        ));
      },
    );
  }

  Future<void> fetchPopularTv() async {
    emit(state.copyWith(popularState: RequestState.Loading));

    final result = await getPopularTv.execute();
    result.fold(
          (failure) {
        emit(state.copyWith(
          popularState: RequestState.Error,
          message: failure.message,
        ));
      },
          (tvData) {
        emit(state.copyWith(
          popularState: RequestState.Loaded,
          popularTv: tvData,
        ));
      },
    );
  }

  Future<void> fetchTopRatedTv() async {
    emit(state.copyWith(topRatedState: RequestState.Loading));

    final result = await getTopRatedTv.execute();
    result.fold(
          (failure) {
        emit(state.copyWith(
          topRatedState: RequestState.Error,
          message: failure.message,
        ));
      },
          (tvData) {
        emit(state.copyWith(
          topRatedState: RequestState.Loaded,
          topRatedTv: tvData,
        ));
      },
    );
  }
}
