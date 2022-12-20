import 'package:bloc/bloc.dart';
import 'package:core/common/state_enum.dart';
import 'package:core/domain/entities/movie.dart';
import 'package:core/domain/usecases/search_movies.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'package:core/presentation/blocs/movie_search_state.dart';

part 'package:core/presentation/blocs/movie_search_cubit.freezed.dart';

class MovieSearchCubit extends Cubit<MovieSearchState> {
  final SearchMovies searchMovies;

  MovieSearchCubit({required this.searchMovies})
      : super(const MovieSearchState());

  Future<void> fetchMovieSearch(String query) async {
    emit(state.copyWith(state: RequestState.Loading));

    final result = await searchMovies.execute(query);
    result.fold(
      (failure) {
        emit(state.copyWith(
          message: failure.message,
          state: RequestState.Error,
        ));
      },
      (data) {
        emit(state.copyWith(
          searchResult: data,
          state: RequestState.Loaded,
        ));
      },
    );
  }
}
