import 'package:bloc/bloc.dart';
import 'package:core/common/state_enum.dart';
import 'package:core/domain/entities/movie.dart';
import 'package:core/domain/usecases/get_watchlist_movies.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'watchlist_movie_state.dart';

part 'watchlist_movie_cubit.freezed.dart';

class WatchlistMovieCubit extends Cubit<WatchlistMovieState> {
  final GetWatchlistMovies getWatchlistMovies;

  WatchlistMovieCubit({required this.getWatchlistMovies})
      : super(const WatchlistMovieState());

  Future<void> fetchWatchlistMovies() async {
    emit(state.copyWith(watchlistState: RequestState.Loading));

    final result = await getWatchlistMovies.execute();
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
            watchlistMovies: moviesData,
          ));
        }
      },
    );
  }
}
