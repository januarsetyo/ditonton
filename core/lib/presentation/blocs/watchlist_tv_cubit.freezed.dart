// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watchlist_tv_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WatchlistTvState {
  List<Tv> get watchlistTv => throw _privateConstructorUsedError;
  RequestState get watchlistState => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WatchlistTvStateCopyWith<WatchlistTvState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchlistTvStateCopyWith<$Res> {
  factory $WatchlistTvStateCopyWith(
          WatchlistTvState value, $Res Function(WatchlistTvState) then) =
      _$WatchlistTvStateCopyWithImpl<$Res, WatchlistTvState>;
  @useResult
  $Res call(
      {List<Tv> watchlistTv, RequestState watchlistState, String message});
}

/// @nodoc
class _$WatchlistTvStateCopyWithImpl<$Res, $Val extends WatchlistTvState>
    implements $WatchlistTvStateCopyWith<$Res> {
  _$WatchlistTvStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? watchlistTv = null,
    Object? watchlistState = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      watchlistTv: null == watchlistTv
          ? _value.watchlistTv
          : watchlistTv // ignore: cast_nullable_to_non_nullable
              as List<Tv>,
      watchlistState: null == watchlistState
          ? _value.watchlistState
          : watchlistState // ignore: cast_nullable_to_non_nullable
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
    implements $WatchlistTvStateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) =
      __$$_StateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Tv> watchlistTv, RequestState watchlistState, String message});
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res>
    extends _$WatchlistTvStateCopyWithImpl<$Res, _$_State>
    implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? watchlistTv = null,
    Object? watchlistState = null,
    Object? message = null,
  }) {
    return _then(_$_State(
      watchlistTv: null == watchlistTv
          ? _value._watchlistTv
          : watchlistTv // ignore: cast_nullable_to_non_nullable
              as List<Tv>,
      watchlistState: null == watchlistState
          ? _value.watchlistState
          : watchlistState // ignore: cast_nullable_to_non_nullable
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
      {final List<Tv> watchlistTv = const [],
      this.watchlistState = RequestState.Empty,
      this.message = ""})
      : _watchlistTv = watchlistTv;

  final List<Tv> _watchlistTv;
  @override
  @JsonKey()
  List<Tv> get watchlistTv {
    if (_watchlistTv is EqualUnmodifiableListView) return _watchlistTv;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_watchlistTv);
  }

  @override
  @JsonKey()
  final RequestState watchlistState;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'WatchlistTvState(watchlistTv: $watchlistTv, watchlistState: $watchlistState, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State &&
            const DeepCollectionEquality()
                .equals(other._watchlistTv, _watchlistTv) &&
            (identical(other.watchlistState, watchlistState) ||
                other.watchlistState == watchlistState) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_watchlistTv),
      watchlistState,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateCopyWith<_$_State> get copyWith =>
      __$$_StateCopyWithImpl<_$_State>(this, _$identity);
}

abstract class _State implements WatchlistTvState {
  const factory _State(
      {final List<Tv> watchlistTv,
      final RequestState watchlistState,
      final String message}) = _$_State;

  @override
  List<Tv> get watchlistTv;
  @override
  RequestState get watchlistState;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_StateCopyWith<_$_State> get copyWith =>
      throw _privateConstructorUsedError;
}
