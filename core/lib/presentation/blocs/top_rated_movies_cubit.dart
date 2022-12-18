import 'package:bloc/bloc.dart';
import 'package:core/common/state_enum.dart';
import 'package:core/domain/entities/movie.dart';
import 'package:core/domain/usecases/get_top_rated_movies.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_rated_movies_state.dart';
part 'top_rated_movies_cubit.freezed.dart';

class TopRatedMoviesCubit extends Cubit<TopRatedMoviesState> {
  final GetTopRatedMovies getTopRatedMovies;
  TopRatedMoviesCubit({required this.getTopRatedMovies}) : super(const TopRatedMoviesState());

  Future<void> fetchTopRatedMovies() async {
    emit(state.copyWith(state: RequestState.Loading));

    final result = await getTopRatedMovies.execute();

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
