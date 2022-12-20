import 'package:dartz/dartz.dart';
import 'package:core/domain/entities/tv.dart';
import 'package:core/domain/usecases/get_now_playing_tv.dart';
import 'package:core/common/failure.dart';
import 'package:core/domain/usecases/get_popular_tv.dart';
import 'package:core/domain/usecases/get_top_rated_tv.dart';
import 'package:core/presentation/blocs/tv_list_cubit.dart';
import 'package:core/common/state_enum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'tv_list_cubit_test.mocks.dart';

@GenerateMocks([GetNowPlayingTv, GetPopularTv, GetTopRatedTv])
void main() {
  late TvListCubit provider;
  late MockGetNowPlayingTv mockGetNowPlayingTv;
  late MockGetPopularTv mockGetPopularTv;
  late MockGetTopRatedTv mockGetTopRatedTv;

  setUp(() {
    mockGetNowPlayingTv = MockGetNowPlayingTv();
    mockGetPopularTv = MockGetPopularTv();
    mockGetTopRatedTv = MockGetTopRatedTv();
    provider = TvListCubit(
      getNowPlayingTv: mockGetNowPlayingTv,
      getPopularTv: mockGetPopularTv,
      getTopRatedTv: mockGetTopRatedTv,
    );
  });

  final tTv = Tv(
    backdropPath: '/etj8E2o0Bud0HkONVQPjyCkIvpv.jpg',
    genreIds: [1, 2, 3],
    id: 1,
    name: 'House of the Dragon',
    originalName: 'House of the Dragon',
    overview:
    'The Targaryen dynasty is at the absolute apex of its power, with more than 15 dragons under their yoke. Most empires crumble from such heights. In the case of the Targaryens, their slow fall begins when King Viserys breaks with a century of tradition by naming his daughter Rhaenyra heir to the Iron Throne. But when Viserys later fathers a son, the court is shocked when Rhaenyra retains her status as his heir, and seeds of division sow friction across the realm.',

    posterPath: '/z2yahl2uefxDCl0nogcRBstwruJ.jpg',
  );
  final tTvList = <Tv>[tTv];

  group('now playing tv', () {
    test('initialState should be Empty', () {
      expect(provider.state.nowPlayingState, equals(RequestState.Empty));
    });

    test('should get data from the usecase', () async {
      // arrange
      when(mockGetNowPlayingTv.execute())
          .thenAnswer((_) async => Right(tTvList));
      // act
      provider.fetchNowPlayingTv();
      // assert
      verify(mockGetNowPlayingTv.execute());
    });

    test('should change state to Loading when usecase is called', () {
      // arrange
      when(mockGetNowPlayingTv.execute())
          .thenAnswer((_) async => Right(tTvList));
      // act
      provider.fetchNowPlayingTv();
      // assert
      expect(provider.state.nowPlayingState, RequestState.Loading);
    });

    test('should change movies when data is gotten successfully', () async {
      // arrange
      when(mockGetNowPlayingTv.execute())
          .thenAnswer((_) async => Right(tTvList));
      // act
      await provider.fetchNowPlayingTv();
      // assert
      expect(provider.state.nowPlayingState, RequestState.Loaded);
      expect(provider.state.nowPlayingTv, tTvList);
    });

    test('should return error when data is unsuccessful', () async {
      // arrange
      when(mockGetNowPlayingTv.execute())
          .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
      // act
      await provider.fetchNowPlayingTv();
      // assert
      expect(provider.state.nowPlayingState, RequestState.Error);
      expect(provider.state.message, 'Server Failure');
    });
  });

  group('popular tv', () {
    test('should change state to loading when usecase is called', () async {
      // arrange
      when(mockGetPopularTv.execute())
          .thenAnswer((_) async => Right(tTvList));
      // act
      provider.fetchPopularTv();
      // assert
      expect(provider.state.popularState, RequestState.Loading);
    });

    test('should change movies data when data is gotten successfully',
            () async {
          // arrange
          when(mockGetPopularTv.execute())
              .thenAnswer((_) async => Right(tTvList));
          // act
          await provider.fetchPopularTv();
          // assert
          expect(provider.state.popularState, RequestState.Loaded);
          expect(provider.state.popularTv, tTvList);
        });

    test('should return error when data is unsuccessful', () async {
      // arrange
      when(mockGetPopularTv.execute())
          .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
      // act
      await provider.fetchPopularTv();
      // assert
      expect(provider.state.popularState, RequestState.Error);
      expect(provider.state.message, 'Server Failure');
    });
  });

  group('top rated tv', () {
    test('should change state to loading when usecase is called', () async {
      // arrange
      when(mockGetTopRatedTv.execute())
          .thenAnswer((_) async => Right(tTvList));
      // act
      provider.fetchTopRatedTv();
      // assert
      expect(provider.state.topRatedState, RequestState.Loading);
    });

    test('should change movies data when data is gotten successfully',
            () async {
          // arrange
          when(mockGetTopRatedTv.execute())
              .thenAnswer((_) async => Right(tTvList));
          // act
          await provider.fetchTopRatedTv();
          // assert
          expect(provider.state.topRatedState, RequestState.Loaded);
          expect(provider.state.topRatedTv, tTvList);
        });

    test('should return error when data is unsuccessful', () async {
      // arrange
      when(mockGetTopRatedTv.execute())
          .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
      // act
      await provider.fetchTopRatedTv();
      // assert
      expect(provider.state.topRatedState, RequestState.Error);
      expect(provider.state.message, 'Server Failure');
    });
  });
}
