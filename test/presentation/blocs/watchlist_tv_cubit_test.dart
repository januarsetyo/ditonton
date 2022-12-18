import 'package:dartz/dartz.dart';
import 'package:core/common/failure.dart';
import 'package:core/common/state_enum.dart';
import 'package:core/domain/usecases/get_watchlist_tv.dart';
import 'package:core/presentation/blocs/watchlist_tv_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_objects.dart';
import 'watchlist_tv_cubit_test.mocks.dart';

@GenerateMocks([GetWatchlistTv])
void main() {
  late WatchlistTvCubit provider;
  late MockGetWatchlistTv mockGetWatchlistTv;

  setUp(() {
    mockGetWatchlistTv = MockGetWatchlistTv();
    provider = WatchlistTvCubit(
      getWatchlistTv: mockGetWatchlistTv,
    );
  });

  test('should change Tv data when data is gotten successfully', () async {
    // arrange
    when(mockGetWatchlistTv.execute())
        .thenAnswer((_) async => Right([testWatchlistTv]));
    // act
    await provider.fetchWatchlistTv();
    // assert
    expect(provider.state.watchlistState, RequestState.Loaded);
    expect(provider.state.watchlistTv, [testWatchlistTv]);
  });

  test('should return error when data is unsuccessful', () async {
    // arrange
    when(mockGetWatchlistTv.execute())
        .thenAnswer((_) async => Left(DatabaseFailure("Can't get data")));
    // act
    await provider.fetchWatchlistTv();
    // assert
    expect(provider.state.watchlistState, RequestState.Error);
    expect(provider.state.message, "Can't get data");
  });

  test('should update _watchlistState when it\'s empty', () async {
    // arrange
    when(mockGetWatchlistTv.execute()).thenAnswer((_) async => Right([]));
    // act
    await provider.fetchWatchlistTv();
    // assert
    expect(provider.state.watchlistState, RequestState.Empty);
    expect(provider.state.watchlistTv, []);
  });
}
