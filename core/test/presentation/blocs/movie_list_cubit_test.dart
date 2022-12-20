import 'package:dartz/dartz.dart';
import 'package:core/common/failure.dart';
import 'package:core/common/state_enum.dart';
import 'package:core/domain/entities/movie.dart';
import 'package:core/domain/usecases/get_now_playing_movies.dart';
import 'package:core/domain/usecases/get_popular_movies.dart';
import 'package:core/domain/usecases/get_top_rated_movies.dart';
import 'package:core/presentation/blocs/movie_list_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'movie_list_cubit_test.mocks.dart';

@GenerateMocks([GetNowPlayingMovies, GetPopularMovies, GetTopRatedMovies])
void main() {
  late MovieListCubit cubit;
  late MockGetNowPlayingMovies mockGetNowPlayingMovies;
  late MockGetPopularMovies mockGetPopularMovies;
  late MockGetTopRatedMovies mockGetTopRatedMovies;

  setUp(() {
    mockGetNowPlayingMovies = MockGetNowPlayingMovies();
    mockGetPopularMovies = MockGetPopularMovies();
    mockGetTopRatedMovies = MockGetTopRatedMovies();
    cubit = MovieListCubit(
      getNowPlayingMovies: mockGetNowPlayingMovies,
      getPopularMovies: mockGetPopularMovies,
      getTopRatedMovies: mockGetTopRatedMovies,
    );
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

  group('now playing movies', () {
    test('initialState should be Empty', () {
      expect(cubit.state.nowPlayingState, equals(RequestState.Empty));
    });

    test('should get data from the usecase', () async {
      // arrange
      when(mockGetNowPlayingMovies.execute())
          .thenAnswer((_) async => Right(tMovieList));
      // act
      cubit.fetchNowPlayingMovies();
      // assert
      verify(mockGetNowPlayingMovies.execute());
    });

    test('should change state to Loading when usecase is called', () {
      // arrange
      when(mockGetNowPlayingMovies.execute())
          .thenAnswer((_) async => Right(tMovieList));
      // act
      cubit.fetchNowPlayingMovies();
      // assert
      expect(cubit.state.nowPlayingState, RequestState.Loading);
    });

    test('should change movies when data is gotten successfully', () async {
      // arrange
      when(mockGetNowPlayingMovies.execute())
          .thenAnswer((_) async => Right(tMovieList));
      // act
      await cubit.fetchNowPlayingMovies();
      // assert
      expect(cubit.state.nowPlayingState, RequestState.Loaded);
      expect(cubit.state.nowPlayingMovies, tMovieList);
    });

    test('should return error when data is unsuccessful', () async {
      // arrange
      when(mockGetNowPlayingMovies.execute())
          .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
      // act
      await cubit.fetchNowPlayingMovies();
      // assert
      expect(cubit.state.nowPlayingState, RequestState.Error);
      expect(cubit.state.message, 'Server Failure');
    });
  });

  group('popular movies', () {
    test('should change state to loading when usecase is called', () async {
      // arrange
      when(mockGetPopularMovies.execute())
          .thenAnswer((_) async => Right(tMovieList));
      // act
      cubit.fetchPopularMovies();
      // assert
      expect(cubit.state.popularMoviesState, RequestState.Loading);
      // verify(cubit.setState(RequestState.Loading));
    });

    test('should change movies data when data is gotten successfully',
        () async {
      // arrange
      when(mockGetPopularMovies.execute())
          .thenAnswer((_) async => Right(tMovieList));
      // act
      await cubit.fetchPopularMovies();
      // assert
      expect(cubit.state.popularMoviesState, RequestState.Loaded);
      expect(cubit.state.popularMovies, tMovieList);
    });

    test('should return error when data is unsuccessful', () async {
      // arrange
      when(mockGetPopularMovies.execute())
          .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
      // act
      await cubit.fetchPopularMovies();
      // assert
      expect(cubit.state.popularMoviesState, RequestState.Error);
      expect(cubit.state.message, 'Server Failure');
    });
  });

  group('top rated movies', () {
    test('should change state to loading when usecase is called', () async {
      // arrange
      when(mockGetTopRatedMovies.execute())
          .thenAnswer((_) async => Right(tMovieList));
      // act
      cubit.fetchTopRatedMovies();
      // assert
      expect(cubit.state.topRatedMoviesState, RequestState.Loading);
    });

    test('should change movies data when data is gotten successfully',
        () async {
      // arrange
      when(mockGetTopRatedMovies.execute())
          .thenAnswer((_) async => Right(tMovieList));
      // act
      await cubit.fetchTopRatedMovies();
      // assert
      expect(cubit.state.topRatedMoviesState, RequestState.Loaded);
      expect(cubit.state.topRatedMovies, tMovieList);
    });

    test('should return error when data is unsuccessful', () async {
      // arrange
      when(mockGetTopRatedMovies.execute())
          .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
      // act
      await cubit.fetchTopRatedMovies();
      // assert
      expect(cubit.state.topRatedMoviesState, RequestState.Error);
      expect(cubit.state.message, 'Server Failure');
    });
  });
}
