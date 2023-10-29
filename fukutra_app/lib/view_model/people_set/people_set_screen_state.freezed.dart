// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'people_set_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PeopleSetScreenState {
  String get people => throw _privateConstructorUsedError;
  String get situation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PeopleSetScreenStateCopyWith<PeopleSetScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleSetScreenStateCopyWith<$Res> {
  factory $PeopleSetScreenStateCopyWith(PeopleSetScreenState value,
          $Res Function(PeopleSetScreenState) then) =
      _$PeopleSetScreenStateCopyWithImpl<$Res, PeopleSetScreenState>;
  @useResult
  $Res call({String people, String situation});
}

/// @nodoc
class _$PeopleSetScreenStateCopyWithImpl<$Res,
        $Val extends PeopleSetScreenState>
    implements $PeopleSetScreenStateCopyWith<$Res> {
  _$PeopleSetScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? people = null,
    Object? situation = null,
  }) {
    return _then(_value.copyWith(
      people: null == people
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as String,
      situation: null == situation
          ? _value.situation
          : situation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeopleSetScreenStateImplCopyWith<$Res>
    implements $PeopleSetScreenStateCopyWith<$Res> {
  factory _$$PeopleSetScreenStateImplCopyWith(_$PeopleSetScreenStateImpl value,
          $Res Function(_$PeopleSetScreenStateImpl) then) =
      __$$PeopleSetScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String people, String situation});
}

/// @nodoc
class __$$PeopleSetScreenStateImplCopyWithImpl<$Res>
    extends _$PeopleSetScreenStateCopyWithImpl<$Res, _$PeopleSetScreenStateImpl>
    implements _$$PeopleSetScreenStateImplCopyWith<$Res> {
  __$$PeopleSetScreenStateImplCopyWithImpl(_$PeopleSetScreenStateImpl _value,
      $Res Function(_$PeopleSetScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? people = null,
    Object? situation = null,
  }) {
    return _then(_$PeopleSetScreenStateImpl(
      people: null == people
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as String,
      situation: null == situation
          ? _value.situation
          : situation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PeopleSetScreenStateImpl implements _PeopleSetScreenState {
  const _$PeopleSetScreenStateImpl(
      {required this.people, required this.situation});

  @override
  final String people;
  @override
  final String situation;

  @override
  String toString() {
    return 'PeopleSetScreenState(people: $people, situation: $situation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeopleSetScreenStateImpl &&
            (identical(other.people, people) || other.people == people) &&
            (identical(other.situation, situation) ||
                other.situation == situation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, people, situation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PeopleSetScreenStateImplCopyWith<_$PeopleSetScreenStateImpl>
      get copyWith =>
          __$$PeopleSetScreenStateImplCopyWithImpl<_$PeopleSetScreenStateImpl>(
              this, _$identity);
}

abstract class _PeopleSetScreenState implements PeopleSetScreenState {
  const factory _PeopleSetScreenState(
      {required final String people,
      required final String situation}) = _$PeopleSetScreenStateImpl;

  @override
  String get people;
  @override
  String get situation;
  @override
  @JsonKey(ignore: true)
  _$$PeopleSetScreenStateImplCopyWith<_$PeopleSetScreenStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
