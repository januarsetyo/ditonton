// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TvListState {
  List<Tv> get popularTv => throw _privateConstructorUsedError;
  RequestState get popularState => throw _privateConstructorUsedError;
  List<Tv> get nowPlayingTv => throw _privateConstructorUsedError;
  RequestState get nowPlayingState => throw _privateConstructorUsedError;
  List<Tv> get topRatedTv => throw _privateConstructorUsedError;
  RequestState get topRatedState => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TvListStateCopyWith<TvListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvListStateCopyWith<$Res> {
  factory $TvListStateCopyWith(
          TvListState value, $Res Function(TvListState) then) =
      _$TvListStateCopyWithImpl<$Res, TvListState>;
  @useResult
  $Res call(
      {List<Tv> popularTv,
      RequestState popularState,
      List<Tv> nowPlayingTv,
      RequestState nowPlayingState,
      List<Tv> topRatedTv,
      RequestState topRatedState,
      String message});
}

/// @nodoc
class _$TvListStateCopyWithImpl<$Res, $Val extends TvListState>
    implements $TvListStateCopyWith<$Res> {
  _$TvListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularTv = null,
    Object? popularState = null,
    Object? nowPlayingTv = null,
    Object? nowPlayingState = null,
    Object? topRatedTv = null,
    Object? topRatedState = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      popularTv: null == popularTv
          ? _value.popularTv
          : popularTv // ignore: cast_nullable_to_non_nullable
              as List<Tv>,
      popularState: null == popularState
          ? _value.popularState
          : popularState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      nowPlayingTv: null == nowPlayingTv
          ? _value.nowPlayingTv
          : nowPlayingTv // ignore: cast_nullable_to_non_nullable
              as List<Tv>,
      nowPlayingState: null == nowPlayingState
          ? _value.nowPlayingState
          : nowPlayingState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      topRatedTv: null == topRatedTv
          ? _value.topRatedTv
          : topRatedTv // ignore: cast_nullable_to_non_nullable
              as List<Tv>,
      topRatedState: null == topRatedState
          ? _value.topRatedState
          : topRatedState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateCopyWith<$Res> implements $TvListStateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) =
      __$$_StateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Tv> popularTv,
      RequestState popularState,
      List<Tv> nowPlayingTv,
      RequestState nowPlayingState,
      List<Tv> topRatedTv,
      RequestState topRatedState,
      String message});
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res>
    extends _$TvListStateCopyWithImpl<$Res, _$_State>
    implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularTv = null,
    Object? popularState = null,
    Object? nowPlayingTv = null,
    Object? nowPlayingState = null,
    Object? topRatedTv = null,
    Object? topRatedState = null,
    Object? message = null,
  }) {
    return _then(_$_State(
      popularTv: null == popularTv
          ? _value._popularTv
          : popularTv // ignore: cast_nullable_to_non_nullable
              as List<Tv>,
      popularState: null == popularState
          ? _value.popularState
          : popularState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      nowPlayingTv: null == nowPlayingTv
          ? _value._nowPlayingTv
          : nowPlayingTv // ignore: cast_nullable_to_non_nullable
              as List<Tv>,
      nowPlayingState: null == nowPlayingState
          ? _value.nowPlayingState
          : nowPlayingState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      topRatedTv: null == topRatedTv
          ? _value._topRatedTv
          : topRatedTv // ignore: cast_nullable_to_non_nullable
              as List<Tv>,
      topRatedState: null == topRatedState
          ? _value.topRatedState
          : topRatedState // ignore: cast_nullable_to_non_nullable
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
      {final List<Tv> popularTv = const [],
      this.popularState = RequestState.Empty,
      final List<Tv> nowPlayingTv = const [],
      this.nowPlayingState = RequestState.Empty,
      final List<Tv> topRatedTv = const [],
      this.topRatedState = RequestState.Empty,
      this.message = ""})
      : _popularTv = popularTv,
        _nowPlayingTv = nowPlayingTv,
        _topRatedTv = topRatedTv;

  final List<Tv> _popularTv;
  @override
  @JsonKey()
  List<Tv> get popularTv {
    if (_popularTv is EqualUnmodifiableListView) return _popularTv;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularTv);
  }

  @override
  @JsonKey()
  final RequestState popularState;
  final List<Tv> _nowPlayingTv;
  @override
  @JsonKey()
  List<Tv> get nowPlayingTv {
    if (_nowPlayingTv is EqualUnmodifiableListView) return _nowPlayingTv;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nowPlayingTv);
  }

  @override
  @JsonKey()
  final RequestState nowPlayingState;
  final List<Tv> _topRatedTv;
  @override
  @JsonKey()
  List<Tv> get topRatedTv {
    if (_topRatedTv is EqualUnmodifiableListView) return _topRatedTv;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topRatedTv);
  }

  @override
  @JsonKey()
  final RequestState topRatedState;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'TvListState(popularTv: $popularTv, popularState: $popularState, nowPlayingTv: $nowPlayingTv, nowPlayingState: $nowPlayingState, topRatedTv: $topRatedTv, topRatedState: $topRatedState, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State &&
            const DeepCollectionEquality()
                .equals(other._popularTv, _popularTv) &&
            (identical(other.popularState, popularState) ||
                other.popularState == popularState) &&
            const DeepCollectionEquality()
                .equals(other._nowPlayingTv, _nowPlayingTv) &&
            (identical(other.nowPlayingState, nowPlayingState) ||
                other.nowPlayingState == nowPlayingState) &&
            const DeepCollectionEquality()
                .equals(other._topRatedTv, _topRatedTv) &&
            (identical(other.topRatedState, topRatedState) ||
                other.topRatedState == topRatedState) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_popularTv),
      popularState,
      const DeepCollectionEquality().hash(_nowPlayingTv),
      nowPlayingState,
      const DeepCollectionEquality().hash(_topRatedTv),
      topRatedState,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateCopyWith<_$_State> get copyWith =>
      __$$_StateCopyWithImpl<_$_State>(this, _$identity);
}

abstract class _State implements TvListState {
  const factory _State(
      {final List<Tv> popularTv,
      final RequestState popularState,
      final List<Tv> nowPlayingTv,
      final RequestState nowPlayingState,
      final List<Tv> topRatedTv,
      final RequestState topRatedState,
      final String message}) = _$_State;

  @override
  List<Tv> get popularTv;
  @override
  RequestState get popularState;
  @override
  List<Tv> get nowPlayingTv;
  @override
  RequestState get nowPlayingState;
  @override
  List<Tv> get topRatedTv;
  @override
  RequestState get topRatedState;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_StateCopyWith<_$_State> get copyWith =>
      throw _privateConstructorUsedError;
}
