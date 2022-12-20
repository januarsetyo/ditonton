import 'package:dartz/dartz.dart';
import 'package:core/common/failure.dart';
import 'package:core/common/state_enum.dart';
import 'package:core/domain/entities/tv.dart';
import 'package:core/domain/usecases/search_tv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:search/presentation/blocs/tv_search_cubit.dart';

import 'tv_search_cubit_test.mocks.dart';

@GenerateMocks([SearchTv])
void main() {
  late TvSearchCubit provider;
  late MockSearchTv mockSearchTv;

  setUp(() {
    mockSearchTv = MockSearchTv();
    provider = TvSearchCubit(
      searchTv: mockSearchTv,
    );
  });

  final tTvModel = Tv(
    backdropPath: "/4QNBIgt5fwgNCN3OSU6BTFv0NGR.jpg",
    genreIds: [
      16,
      10759,
    ],
    id: 888,
    name: "Spider-Man",
    originalName: "Spider-Man",
    overview:
    "Bitten by a radioactive spider, Peter Parker develops spider-like superpowers. He uses these to fight crime while trying to balance it with the struggles of his personal life.",
    posterPath: "/wXthtEN5kdWA1bHz03lkuCJS6hA.jpg",
  );

  final tTvList = <Tv>[tTvModel];
  final tQuery = "Spider-Man";

  group('search TV', () {
    test('should change state to loading when usecase is called', () async {
      // arrange
      when(mockSearchTv.execute(tQuery))
          .thenAnswer((_) async => Right(tTvList));
      // act
      provider.fetchTvSearch(tQuery);
      // assert
      expect(provider.state.state, RequestState.Loading);
    });

    test('should change search result data when data is gotten successfully',
            () async {
          // arrange
          when(mockSearchTv.execute(tQuery))
              .thenAnswer((_) async => Right(tTvList));
          // act
          await provider.fetchTvSearch(tQuery);
          // assert
          expect(provider.state.state, RequestState.Loaded);
          expect(provider.state.searchResult, tTvList);
        });

    test('should return error when data is unsuccessful', () async {
      // arrange
      when(mockSearchTv.execute(tQuery))
          .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
      // act
      await provider.fetchTvSearch(tQuery);
      // assert
      expect(provider.state.state, RequestState.Error);
      expect(provider.state.message, 'Server Failure');
    });
  });
}
