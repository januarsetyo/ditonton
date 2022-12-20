import 'package:dartz/dartz.dart';
import 'package:core/common/failure.dart';
import 'package:core/common/state_enum.dart';
import 'package:core/domain/entities/movie.dart';
import 'package:core/domain/usecases/get_popular_movies.dart';
import 'package:core/presentation/blocs/popular_movies_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'popular_movies_cubit_test.mocks.dart';

@GenerateMocks([GetPopularMovies])
void main() {
  late MockGetPopularMovies mockGetPopularMovies;
  late PopularMoviesCubit notifier;

  setUp(() {
    mockGetPopularMovies = MockGetPopularMovies();
    notifier = PopularMoviesCubit(mockGetPopularMovies);
  });

  final tMovie = Movie(
    adult: false,
    backdropPath: 'backdropPath',
    genreIds: [1, 2, 3],
    id: 1,
    originalTitle: 'originalTitle',
    overview: 'overview',
    popularity: 1,
    posterPath: 'posterPath',
    releaseDate: 'releaseDate',
    title: 'title',
    video: false,
    voteAverage: 1,
    voteCount: 1,
  );

  final tMovieList = <Movie>[tMovie];

  test('should change state to loading when usecase is called', () async {
    // arrange
    when(mockGetPopularMovies.execute())
        .thenAnswer((_) async => Right(tMovieList));
    // act
    notifier.fetchPopularMovies();
    // assert
    expect(notifier.state.state, RequestState.Loading);
  });

  test('should change movies data when data is gotten successfully', () async {
    // arrange
    when(mockGetPopularMovies.execute())
        .thenAnswer((_) async => Right(tMovieList));
    // act
    await notifier.fetchPopularMovies();
    // assert
    expect(notifier.state.state, RequestState.Loaded);
    expect(notifier.state.movies, tMovieList);
  });

  test('should return error when data is unsuccessful', () async {
    // arrange
    when(mockGetPopularMovies.execute())
        .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
    // act
    await notifier.fetchPopularMovies();
    // assert
    expect(notifier.state.state, RequestState.Error);
    expect(notifier.state.message, 'Server Failure');
  });
}
