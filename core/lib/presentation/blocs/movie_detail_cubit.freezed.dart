// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieDetailState {
  MovieDetail? get movie => throw _privateConstructorUsedError;
  RequestState get movieState => throw _privateConstructorUsedError;
  List<Movie> get movieRecommendations => throw _privateConstructorUsedError;
  RequestState get recommendationState => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isAddedToWatchlist => throw _privateConstructorUsedError;
  String get watchlistMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailStateCopyWith<MovieDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailStateCopyWith<$Res> {
  factory $MovieDetailStateCopyWith(
          MovieDetailState value, $Res Function(MovieDetailState) then) =
      _$MovieDetailStateCopyWithImpl<$Res, MovieDetailState>;
  @useResult
  $Res call(
      {MovieDetail? movie,
      RequestState movieState,
      List<Movie> movieRecommendations,
      RequestState recommendationState,
      String message,
      bool isAddedToWatchlist,
      String watchlistMessage});
}

/// @nodoc
class _$MovieDetailStateCopyWithImpl<$Res, $Val extends MovieDetailState>
    implements $MovieDetailStateCopyWith<$Res> {
  _$MovieDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = freezed,
    Object? movieState = null,
    Object? movieRecommendations = null,
    Object? recommendationState = null,
    Object? message = null,
    Object? isAddedToWatchlist = null,
    Object? watchlistMessage = null,
  }) {
    return _then(_value.copyWith(
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieDetail?,
      movieState: null == movieState
          ? _value.movieState
          : movieState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      movieRecommendations: null == movieRecommendations
          ? _value.movieRecommendations
          : movieRecommendations // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      recommendationState: null == recommendationState
          ? _value.recommendationState
          : recommendationState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAddedToWatchlist: null == isAddedToWatchlist
          ? _value.isAddedToWatchlist
          : isAddedToWatchlist // ignore: cast_nullable_to_non_nullable
              as bool,
      watchlistMessage: null == watchlistMessage
          ? _value.watchlistMessage
          : watchlistMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateCopyWith<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) =
      __$$_StateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MovieDetail? movie,
      RequestState movieState,
      List<Movie> movieRecommendations,
      RequestState recommendationState,
      String message,
      bool isAddedToWatchlist,
      String watchlistMessage});
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res, _$_State>
    implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = freezed,
    Object? movieState = null,
    Object? movieRecommendations = null,
    Object? recommendationState = null,
    Object? message = null,
    Object? isAddedToWatchlist = null,
    Object? watchlistMessage = null,
  }) {
    return _then(_$_State(
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieDetail?,
      movieState: null == movieState
          ? _value.movieState
          : movieState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      movieRecommendations: null == movieRecommendations
          ? _value._movieRecommendations
          : movieRecommendations // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      recommendationState: null == recommendationState
          ? _value.recommendationState
          : recommendationState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAddedToWatchlist: null == isAddedToWatchlist
          ? _value.isAddedToWatchlist
          : isAddedToWatchlist // ignore: cast_nullable_to_non_nullable
              as bool,
      watchlistMessage: null == watchlistMessage
          ? _value.watchlistMessage
          : watchlistMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_State implements _State {
  const _$_State(
      {this.movie,
      this.movieState = RequestState.Empty,
      final List<Movie> movieRecommendations = const [],
      this.recommendationState = RequestState.Empty,
      this.message = "",
      this.isAddedToWatchlist = false,
      this.watchlistMessage = ""})
      : _movieRecommendations = movieRecommendations;

  @override
  final MovieDetail? movie;
  @override
  @JsonKey()
  final RequestState movieState;
  final List<Movie> _movieRecommendations;
  @override
  @JsonKey()
  List<Movie> get movieRecommendations {
    if (_movieRecommendations is EqualUnmodifiableListView)
      return _movieRecommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movieRecommendations);
  }

  @override
  @JsonKey()
  final RequestState recommendationState;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final bool isAddedToWatchlist;
  @override
  @JsonKey()
  final String watchlistMessage;

  @override
  String toString() {
    return 'MovieDetailState(movie: $movie, movieState: $movieState, movieRecommendations: $movieRecommendations, recommendationState: $recommendationState, message: $message, isAddedToWatchlist: $isAddedToWatchlist, watchlistMessage: $watchlistMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.movieState, movieState) ||
                other.movieState == movieState) &&
            const DeepCollectionEquality()
                .equals(other._movieRecommendations, _movieRecommendations) &&
            (identical(other.recommendationState, recommendationState) ||
                other.recommendationState == recommendationState) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isAddedToWatchlist, isAddedToWatchlist) ||
                other.isAddedToWatchlist == isAddedToWatchlist) &&
            (identical(other.watchlistMessage, watchlistMessage) ||
                other.watchlistMessage == watchlistMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      movie,
      movieState,
      const DeepCollectionEquality().hash(_movieRecommendations),
      recommendationState,
      message,
      isAddedToWatchlist,
      watchlistMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateCopyWith<_$_State> get copyWith =>
      __$$_StateCopyWithImpl<_$_State>(this, _$identity);
}

abstract class _State implements MovieDetailState {
  const factory _State(
      {final MovieDetail? movie,
      final RequestState movieState,
      final List<Movie> movieRecommendations,
      final RequestState recommendationState,
      final String message,
      final bool isAddedToWatchlist,
      final String watchlistMessage}) = _$_State;

  @override
  MovieDetail? get movie;
  @override
  RequestState get movieState;
  @override
  List<Movie> get movieRecommendations;
  @override
  RequestState get recommendationState;
  @override
  String get message;
  @override
  bool get isAddedToWatchlist;
  @override
  String get watchlistMessage;
  @override
  @JsonKey(ignore: true)
  _$$_StateCopyWith<_$_State> get copyWith =>
      throw _privateConstructorUsedError;
}
