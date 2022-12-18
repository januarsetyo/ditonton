import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core/common/state_enum.dart';
import 'package:core/domain/entities/movie.dart';
import 'package:core/domain/usecases/get_popular_movies.dart';

part 'popular_movies_state.dart';

part 'popular_movies_cubit.freezed.dart';

class PopularMoviesCubit extends Cubit<PopularMoviesState> {
  final GetPopularMovies getPopularMovies;

  PopularMoviesCubit(this.getPopularMovies)
      : super(const PopularMoviesState());

  Future<void> fetchPopularMovies() async {
    emit(state.copyWith(state: RequestState.Loading));

    final result = await getPopularMovies.execute();

    result.fold(
      (failure) {
        emit(state.copyWith(
          message: failure.message,
          state: RequestState.Error,
        ));
      },
      (moviesData) {
        emit(state.copyWith(
          movies: moviesData,
          state: RequestState.Loaded,
        ));
      },
    );
  }
}
