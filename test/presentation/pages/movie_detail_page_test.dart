import 'package:bloc_test/bloc_test.dart';
import 'package:core/common/state_enum.dart';
import 'package:core/domain/entities/movie_detail.dart';
import 'package:core/presentation/blocs/movie_detail_cubit.dart';
import 'package:core/presentation/pages/movie_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../dummy_data/dummy_objects.dart';

class MockMovieDetailCubit extends MockCubit<MovieDetailState>
    implements MovieDetailCubit {}

class FakeMovieDetail extends Fake implements MovieDetail {}

void main() {
  late MockMovieDetailCubit mockCubit;

  setUp(() {
    mockCubit = MockMovieDetailCubit();

    when(() => mockCubit.fetchMovieDetail(any()))
        .thenAnswer((_) => Future.value());
    when(() => mockCubit.loadWatchlistStatus(any()))
        .thenAnswer((_) => Future.value());

    registerFallbackValue(FakeMovieDetail());
  });

  void initCubitState(MovieDetailState state) {
    whenListen<MovieDetailState>(
      mockCubit,
      Stream.empty(),
      initialState: state,
    );
  }

  Widget _makeTestableWidget(Widget body) {
    return BlocProvider<MovieDetailCubit>.value(
      value: mockCubit,
      child: MaterialApp(
        home: body,
      ),
    );
  }

  testWidgets(
      'Watchlist button should display add icon when movie not added to watchlist',
      (WidgetTester tester) async {
    initCubitState(MovieDetailState(
      movieState: RequestState.Loaded,
      movie: testMovieDetail,
      recommendationState: RequestState.Loaded,
      movieRecommendations: [],
      isAddedToWatchlist: false,
    ));

    final watchlistButtonIcon = find.byIcon(Icons.add);

    await tester.pumpWidget(_makeTestableWidget(MovieDetailPage(id: 1)));

    expect(watchlistButtonIcon, findsOneWidget);
  });

  testWidgets(
      'Watchlist button should dispay check icon when movie is added to wathclist',
      (WidgetTester tester) async {
    initCubitState(MovieDetailState(
      movieState: RequestState.Loaded,
      movie: testMovieDetail,
      recommendationState: RequestState.Loaded,
      movieRecommendations: [],
      isAddedToWatchlist: true,
    ));

    final watchlistButtonIcon = find.byIcon(Icons.check);

    await tester.pumpWidget(_makeTestableWidget(MovieDetailPage(id: 1)));

    expect(watchlistButtonIcon, findsOneWidget);
  });

  testWidgets(
      'Watchlist button should display Snackbar when added to watchlist',
      (WidgetTester tester) async {
    initCubitState(MovieDetailState(
      movieState: RequestState.Loaded,
      movie: testMovieDetail,
      recommendationState: RequestState.Loaded,
      movieRecommendations: [],
      isAddedToWatchlist: false,
      watchlistMessage: 'Added to Watchlist',
    ));

    when(() => mockCubit.addWatchlist(any())).thenAnswer((_) => Future.value());

    final watchlistButton = find.byType(ElevatedButton);

    await tester.pumpWidget(_makeTestableWidget(MovieDetailPage(id: 1)));

    expect(find.byIcon(Icons.add), findsOneWidget);

    await tester.tap(watchlistButton);
    await tester.pump();

    expect(find.byType(SnackBar), findsOneWidget);
    expect(find.text('Added to Watchlist'), findsOneWidget);
  });

  testWidgets(
      'Watchlist button should display AlertDialog when add to watchlist failed',
      (WidgetTester tester) async {
    initCubitState(MovieDetailState(
      movieState: RequestState.Loaded,
      movie: testMovieDetail,
      recommendationState: RequestState.Loaded,
      movieRecommendations: [],
      isAddedToWatchlist: false,
      watchlistMessage: 'Failed',
    ));
    when(() => mockCubit.addWatchlist(any())).thenAnswer((_) => Future.value());

    final watchlistButton = find.byType(ElevatedButton);

    await tester.pumpWidget(_makeTestableWidget(MovieDetailPage(id: 1)));

    expect(find.byIcon(Icons.add), findsOneWidget);

    await tester.tap(watchlistButton);
    await tester.pump();

    expect(find.byType(AlertDialog), findsOneWidget);
    expect(find.text('Failed'), findsOneWidget);
  });

  testWidgets(
      'Should Display Cicular progress Indicator when Requesstate loading.',
      (WidgetTester tester) async {
    initCubitState(MovieDetailState(movieState: RequestState.Loading));

    await tester.pumpWidget(_makeTestableWidget(MovieDetailPage(id: 1)));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('Should Display Text With Error message.',
      (WidgetTester tester) async {
    initCubitState(MovieDetailState(
      movieState: RequestState.Error,
      message: 'failed',
    ));

    await tester.pumpWidget(_makeTestableWidget(MovieDetailPage(id: 1)));
    await tester.pump(Duration(seconds: 2));

    expect(find.byType(Text), findsOneWidget);
    expect(find.text('failed'), findsOneWidget);
  });
}
