// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieListState {
  List<Movie> get nowPlayingMovies => throw _privateConstructorUsedError;
  RequestState get nowPlayingState => throw _privateConstructorUsedError;
  List<Movie> get popularMovies => throw _privateConstructorUsedError;
  RequestState get popularMoviesState => throw _privateConstructorUsedError;
  List<Movie> get topRatedMovies => throw _privateConstructorUsedError;
  RequestState get topRatedMoviesState => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieListStateCopyWith<MovieListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListStateCopyWith<$Res> {
  factory $MovieListStateCopyWith(
          MovieListState value, $Res Function(MovieListState) then) =
      _$MovieListStateCopyWithImpl<$Res, MovieListState>;
  @useResult
  $Res call(
      {List<Movie> nowPlayingMovies,
      RequestState nowPlayingState,
      List<Movie> popularMovies,
      RequestState popularMoviesState,
      List<Movie> topRatedMovies,
      RequestState topRatedMoviesState,
      String message});
}

/// @nodoc
class _$MovieListStateCopyWithImpl<$Res, $Val extends MovieListState>
    implements $MovieListStateCopyWith<$Res> {
  _$MovieListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nowPlayingMovies = null,
    Object? nowPlayingState = null,
    Object? popularMovies = null,
    Object? popularMoviesState = null,
    Object? topRatedMovies = null,
    Object? topRatedMoviesState = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      nowPlayingMovies: null == nowPlayingMovies
          ? _value.nowPlayingMovies
          : nowPlayingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      nowPlayingState: null == nowPlayingState
          ? _value.nowPlayingState
          : nowPlayingState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      popularMovies: null == popularMovies
          ? _value.popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      popularMoviesState: null == popularMoviesState
          ? _value.popularMoviesState
          : popularMoviesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      topRatedMovies: null == topRatedMovies
          ? _value.topRatedMovies
          : topRatedMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      topRatedMoviesState: null == topRatedMoviesState
          ? _value.topRatedMoviesState
          : topRatedMoviesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateCopyWith<$Res>
    implements $MovieListStateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) =
      __$$_StateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Movie> nowPlayingMovies,
      RequestState nowPlayingState,
      List<Movie> popularMovies,
      RequestState popularMoviesState,
      List<Movie> topRatedMovies,
      RequestState topRatedMoviesState,
      String message});
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res, _$_State>
    implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nowPlayingMovies = null,
    Object? nowPlayingState = null,
    Object? popularMovies = null,
    Object? popularMoviesState = null,
    Object? topRatedMovies = null,
    Object? topRatedMoviesState = null,
    Object? message = null,
  }) {
    return _then(_$_State(
      nowPlayingMovies: null == nowPlayingMovies
          ? _value._nowPlayingMovies
          : nowPlayingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      nowPlayingState: null == nowPlayingState
          ? _value.nowPlayingState
          : nowPlayingState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      popularMovies: null == popularMovies
          ? _value._popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      popularMoviesState: null == popularMoviesState
          ? _value.popularMoviesState
          : popularMoviesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      topRatedMovies: null == topRatedMovies
          ? _value._topRatedMovies
          : topRatedMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      topRatedMoviesState: null == topRatedMoviesState
          ? _value.topRatedMoviesState
          : topRatedMoviesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_State implements _State {
  const _$_State(
      {final List<Movie> nowPlayingMovies = const [],
      this.nowPlayingState = RequestState.Empty,
      final List<Movie> popularMovies = const [],
      this.popularMoviesState = RequestState.Empty,
      final List<Movie> topRatedMovies = const [],
      this.topRatedMoviesState = RequestState.Empty,
      this.message = ""})
      : _nowPlayingMovies = nowPlayingMovies,
        _popularMovies = popularMovies,
        _topRatedMovies = topRatedMovies;

  final List<Movie> _nowPlayingMovies;
  @override
  @JsonKey()
  List<Movie> get nowPlayingMovies {
    if (_nowPlayingMovies is EqualUnmodifiableListView)
      return _nowPlayingMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nowPlayingMovies);
  }

  @override
  @JsonKey()
  final RequestState nowPlayingState;
  final List<Movie> _popularMovies;
  @override
  @JsonKey()
  List<Movie> get popularMovies {
    if (_popularMovies is EqualUnmodifiableListView) return _popularMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularMovies);
  }

  @override
  @JsonKey()
  final RequestState popularMoviesState;
  final List<Movie> _topRatedMovies;
  @override
  @JsonKey()
  List<Movie> get topRatedMovies {
    if (_topRatedMovies is EqualUnmodifiableListView) return _topRatedMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topRatedMovies);
  }

  @override
  @JsonKey()
  final RequestState topRatedMoviesState;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MovieListState(nowPlayingMovies: $nowPlayingMovies, nowPlayingState: $nowPlayingState, popularMovies: $popularMovies, popularMoviesState: $popularMoviesState, topRatedMovies: $topRatedMovies, topRatedMoviesState: $topRatedMoviesState, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State &&
            const DeepCollectionEquality()
                .equals(other._nowPlayingMovies, _nowPlayingMovies) &&
            (identical(other.nowPlayingState, nowPlayingState) ||
                other.nowPlayingState == nowPlayingState) &&
            const DeepCollectionEquality()
                .equals(other._popularMovies, _popularMovies) &&
            (identical(other.popularMoviesState, popularMoviesState) ||
                other.popularMoviesState == popularMoviesState) &&
            const DeepCollectionEquality()
                .equals(other._topRatedMovies, _topRatedMovies) &&
            (identical(other.topRatedMoviesState, topRatedMoviesState) ||
                other.topRatedMoviesState == topRatedMoviesState) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_nowPlayingMovies),
      nowPlayingState,
      const DeepCollectionEquality().hash(_popularMovies),
      popularMoviesState,
      const DeepCollectionEquality().hash(_topRatedMovies),
      topRatedMoviesState,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateCopyWith<_$_State> get copyWith =>
      __$$_StateCopyWithImpl<_$_State>(this, _$identity);
}

abstract class _State implements MovieListState {
  const factory _State(
      {final List<Movie> nowPlayingMovies,
      final RequestState nowPlayingState,
      final List<Movie> popularMovies,
      final RequestState popularMoviesState,
      final List<Movie> topRatedMovies,
      final RequestState topRatedMoviesState,
      final String message}) = _$_State;

  @override
  List<Movie> get nowPlayingMovies;
  @override
  RequestState get nowPlayingState;
  @override
  List<Movie> get popularMovies;
  @override
  RequestState get popularMoviesState;
  @override
  List<Movie> get topRatedMovies;
  @override
  RequestState get topRatedMoviesState;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_StateCopyWith<_$_State> get copyWith =>
      throw _privateConstructorUsedError;
}
