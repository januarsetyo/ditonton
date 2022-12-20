import 'package:bloc/bloc.dart';
import 'package:core/common/state_enum.dart';
import 'package:core/domain/entities/tv.dart';
import 'package:core/domain/usecases/search_tv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_search_state.dart';

part 'tv_search_cubit.freezed.dart';

class TvSearchCubit extends Cubit<TvSearchState> {
  final SearchTv searchTv;

  TvSearchCubit({required this.searchTv}) : super(const TvSearchState());

  Future<void> fetchTvSearch(String query) async {
    emit(state.copyWith(state: RequestState.Loading));

    final result = await searchTv.execute(query);
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
