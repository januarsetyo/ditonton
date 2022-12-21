// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TvSearchState {
  RequestState get state => throw _privateConstructorUsedError;
  List<Tv> get searchResult => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TvSearchStateCopyWith<TvSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvSearchStateCopyWith<$Res> {
  factory $TvSearchStateCopyWith(
      TvSearchState value, $Res Function(TvSearchState) then) =
  _$TvSearchStateCopyWithImpl<$Res, TvSearchState>;
  @useResult
  $Res call({RequestState state, List<Tv> searchResult, String message});
}

/// @nodoc
class _$TvSearchStateCopyWithImpl<$Res, $Val extends TvSearchState>
    implements $TvSearchStateCopyWith<$Res> {
  _$TvSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? searchResult = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
      as RequestState,
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
      as List<Tv>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
      as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateCopyWith<$Res> implements $TvSearchStateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) =
  __$$_StateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestState state, List<Tv> searchResult, String message});
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res>
    extends _$TvSearchStateCopyWithImpl<$Res, _$_State>
    implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? searchResult = null,
    Object? message = null,
  }) {
    return _then(_$_State(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
      as RequestState,
      searchResult: null == searchResult
          ? _value._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
      as List<Tv>,
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
      {this.state = RequestState.Empty,
        final List<Tv> searchResult = const [],
        this.message = ""})
      : _searchResult = searchResult;

  @override
  @JsonKey()
  final RequestState state;
  final List<Tv> _searchResult;
  @override
  @JsonKey()
  List<Tv> get searchResult {
    if (_searchResult is EqualUnmodifiableListView) return _searchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResult);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'TvSearchState(state: $state, searchResult: $searchResult, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality()
                .equals(other._searchResult, _searchResult) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state,
      const DeepCollectionEquality().hash(_searchResult), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateCopyWith<_$_State> get copyWith =>
      __$$_StateCopyWithImpl<_$_State>(this, _$identity);
}

abstract class _State implements TvSearchState {
  const factory _State(
      {final RequestState state,
        final List<Tv> searchResult,
        final String message}) = _$_State;

  @override
  RequestState get state;
  @override
  List<Tv> get searchResult;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_StateCopyWith<_$_State> get copyWith =>
      throw _privateConstructorUsedError;
}
