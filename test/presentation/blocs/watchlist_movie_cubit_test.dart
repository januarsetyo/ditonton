import 'package:dartz/dartz.dart';
import 'package:core/common/failure.dart';
import 'package:core/common/state_enum.dart';
import 'package:core/domain/usecases/get_watchlist_movies.dart';
import 'package:core/presentation/blocs/watchlist_movie_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_objects.dart';
import 'watchlist_movie_cubit_test.mocks.dart';

@GenerateMocks([GetWatchlistMovies])
void main() {
  late WatchlistMovieCubit provider;
  late MockGetWatchlistMovies mockGetWatchlistMovies;

  setUp(() {
    mockGetWatchlistMovies = MockGetWatchlistMovies();
    provider = WatchlistMovieCubit(
      getWatchlistMovies: mockGetWatchlistMovies,
    );
  });

  test('should change movies data when data is gotten successfully', () async {
    // arrange
    when(mockGetWatchlistMovies.execute())
        .thenAnswer((_) async => Right([testWatchlistMovie]));
    // act
    await provider.fetchWatchlistMovies();
    // assert
    expect(provider.state.watchlistState, RequestState.Loaded);
    expect(provider.state.watchlistMovies, [testWatchlistMovie]);
  });

  test('should return error when data is unsuccessful', () async {
    // arrange
    when(mockGetWatchlistMovies.execute())
        .thenAnswer((_) async => Left(DatabaseFailure("Can't get data")));
    // act
    await provider.fetchWatchlistMovies();
    // assert
    expect(provider.state.watchlistState, RequestState.Error);
    expect(provider.state.message, "Can't get data");
  });

  test('should update _watchlistState when it\'s empty', () async {
    // arrange
    when(mockGetWatchlistMovies.execute()).thenAnswer((_) async => Right([]));
    // act
    await provider.fetchWatchlistMovies();
    // assert
    expect(provider.state.watchlistState, RequestState.Empty);
    expect(provider.state.watchlistMovies, []);
  });
}
