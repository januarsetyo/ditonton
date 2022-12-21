import 'package:bloc/bloc.dart';
import 'package:core/common/state_enum.dart';
import 'package:core/domain/entities/movie.dart';
import 'package:core/domain/entities/movie_detail.dart';
import 'package:core/domain/usecases/get_movie_detail.dart';
import 'package:core/domain/usecases/get_movie_recommendations.dart';
import 'package:core/domain/usecases/get_watchlist_status.dart';
import 'package:core/domain/usecases/remove_watchlist.dart';
import 'package:core/domain/usecases/save_watchlist.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_state.dart';

part 'movie_detail_cubit.freezed.dart';

class MovieDetailCubit extends Cubit<MovieDetailState> {
  static const watchlistAddSuccessMessage = 'Added to Watchlist';
  static const watchlistRemoveSuccessMessage = 'Removed from Watchlist';

  final GetMovieDetail getMovieDetail;
  final GetMovieRecommendations getMovieRecommendations;
  final GetWatchListStatus getWatchListStatus;
  final SaveWatchlist saveWatchlist;
  final RemoveWatchlist removeWatchlist;

  MovieDetailCubit({
    required this.getMovieDetail,
    required this.getMovieRecommendations,
    required this.getWatchListStatus,
    required this.saveWatchlist,
    required this.removeWatchlist,
  }) : super(const MovieDetailState());

  Future<void> fetchMovieDetail(int id) async {
    emit(state.copyWith(movieState: RequestState.Loading));
    final detailResult = await getMovieDetail.execute(id);
    final recommendationResult = await getMovieRecommendations.execute(id);

    detailResult.fold(
          (failure) {
        emit(state.copyWith(
          movieState: RequestState.Error,
          message: failure.message,
        ));
      },
          (movie) {
        emit(state.copyWith(
          recommendationState: RequestState.Loading,
          movie: movie,
        ));
        recommendationResult.fold(
              (failure) {
            emit(state.copyWith(
              recommendationState: RequestState.Error,
              message: failure.message,
            ));
          },
              (movies) {
            emit(state.copyWith(
              recommendationState: RequestState.Loaded,
              movieRecommendations: movies,
            ));
          },
        );
        emit(state.copyWith(movieState: RequestState.Loaded));
      },
    );
  }

  Future<void> addWatchlist(MovieDetail movie) async {
    final result = await saveWatchlist.execute(movie);

    final message = result.fold(
          (failure) => failure.message,
          (successMessage) => successMessage,
    );

    await loadWatchlistStatus(movie.id, message);
  }

  Future<void> removeFromWatchlist(MovieDetail movie) async {
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
