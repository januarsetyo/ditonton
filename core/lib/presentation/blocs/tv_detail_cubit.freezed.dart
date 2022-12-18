// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TvDetailState {
  TvDetail? get tv => throw _privateConstructorUsedError;
  RequestState get tvState => throw _privateConstructorUsedError;
  List<Tv> get tvRecommendations => throw _privateConstructorUsedError;
  RequestState get recommendationState => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isAddedToWatchlist => throw _privateConstructorUsedError;
  String get watchlistMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TvDetailStateCopyWith<TvDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvDetailStateCopyWith<$Res> {
  factory $TvDetailStateCopyWith(
          TvDetailState value, $Res Function(TvDetailState) then) =
      _$TvDetailStateCopyWithImpl<$Res, TvDetailState>;
  @useResult
  $Res call(
      {TvDetail? tv,
      RequestState tvState,
      List<Tv> tvRecommendations,
      RequestState recommendationState,
      String message,
      bool isAddedToWatchlist,
      String watchlistMessage});
}

/// @nodoc
class _$TvDetailStateCopyWithImpl<$Res, $Val extends TvDetailState>
    implements $TvDetailStateCopyWith<$Res> {
  _$TvDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tv = freezed,
    Object? tvState = null,
    Object? tvRecommendations = null,
    Object? recommendationState = null,
    Object? message = null,
    Object? isAddedToWatchlist = null,
    Object? watchlistMessage = null,
  }) {
    return _then(_value.copyWith(
      tv: freezed == tv
          ? _value.tv
          : tv // ignore: cast_nullable_to_non_nullable
              as TvDetail?,
      tvState: null == tvState
          ? _value.tvState
          : tvState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      tvRecommendations: null == tvRecommendations
          ? _value.tvRecommendations
          : tvRecommendations // ignore: cast_nullable_to_non_nullable
              as List<Tv>,
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
abstract class _$$_StateCopyWith<$Res> implements $TvDetailStateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) =
      __$$_StateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TvDetail? tv,
      RequestState tvState,
      List<Tv> tvRecommendations,
      RequestState recommendationState,
      String message,
      bool isAddedToWatchlist,
      String watchlistMessage});
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res>
    extends _$TvDetailStateCopyWithImpl<$Res, _$_State>
    implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tv = freezed,
    Object? tvState = null,
    Object? tvRecommendations = null,
    Object? recommendationState = null,
    Object? message = null,
    Object? isAddedToWatchlist = null,
    Object? watchlistMessage = null,
  }) {
    return _then(_$_State(
      tv: freezed == tv
          ? _value.tv
          : tv // ignore: cast_nullable_to_non_nullable
              as TvDetail?,
      tvState: null == tvState
          ? _value.tvState
          : tvState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      tvRecommendations: null == tvRecommendations
          ? _value._tvRecommendations
          : tvRecommendations // ignore: cast_nullable_to_non_nullable
              as List<Tv>,
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
      {this.tv,
      this.tvState = RequestState.Empty,
      final List<Tv> tvRecommendations = const [],
      this.recommendationState = RequestState.Empty,
      this.message = "",
      this.isAddedToWatchlist = false,
      this.watchlistMessage = ""})
      : _tvRecommendations = tvRecommendations;

  @override
  final TvDetail? tv;
  @override
  @JsonKey()
  final RequestState tvState;
  final List<Tv> _tvRecommendations;
  @override
  @JsonKey()
  List<Tv> get tvRecommendations {
    if (_tvRecommendations is EqualUnmodifiableListView)
      return _tvRecommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvRecommendations);
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
    return 'TvDetailState(tv: $tv, tvState: $tvState, tvRecommendations: $tvRecommendations, recommendationState: $recommendationState, message: $message, isAddedToWatchlist: $isAddedToWatchlist, watchlistMessage: $watchlistMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State &&
            (identical(other.tv, tv) || other.tv == tv) &&
            (identical(other.tvState, tvState) || other.tvState == tvState) &&
            const DeepCollectionEquality()
                .equals(other._tvRecommendations, _tvRecommendations) &&
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
      tv,
      tvState,
      const DeepCollectionEquality().hash(_tvRecommendations),
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

abstract class _State implements TvDetailState {
  const factory _State(
      {final TvDetail? tv,
      final RequestState tvState,
      final List<Tv> tvRecommendations,
      final RequestState recommendationState,
      final String message,
      final bool isAddedToWatchlist,
      final String watchlistMessage}) = _$_State;

  @override
  TvDetail? get tv;
  @override
  RequestState get tvState;
  @override
  List<Tv> get tvRecommendations;
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
