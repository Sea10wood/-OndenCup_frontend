// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_set_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoveSetScreenState {
  String get transport => throw _privateConstructorUsedError;
  String get budget => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoveSetScreenStateCopyWith<MoveSetScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveSetScreenStateCopyWith<$Res> {
  factory $MoveSetScreenStateCopyWith(
          MoveSetScreenState value, $Res Function(MoveSetScreenState) then) =
      _$MoveSetScreenStateCopyWithImpl<$Res, MoveSetScreenState>;
  @useResult
  $Res call({String transport, String budget});
}

/// @nodoc
class _$MoveSetScreenStateCopyWithImpl<$Res, $Val extends MoveSetScreenState>
    implements $MoveSetScreenStateCopyWith<$Res> {
  _$MoveSetScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transport = null,
    Object? budget = null,
  }) {
    return _then(_value.copyWith(
      transport: null == transport
          ? _value.transport
          : transport // ignore: cast_nullable_to_non_nullable
              as String,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoveSetScreenStateImplCopyWith<$Res>
    implements $MoveSetScreenStateCopyWith<$Res> {
  factory _$$MoveSetScreenStateImplCopyWith(_$MoveSetScreenStateImpl value,
          $Res Function(_$MoveSetScreenStateImpl) then) =
      __$$MoveSetScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String transport, String budget});
}

/// @nodoc
class __$$MoveSetScreenStateImplCopyWithImpl<$Res>
    extends _$MoveSetScreenStateCopyWithImpl<$Res, _$MoveSetScreenStateImpl>
    implements _$$MoveSetScreenStateImplCopyWith<$Res> {
  __$$MoveSetScreenStateImplCopyWithImpl(_$MoveSetScreenStateImpl _value,
      $Res Function(_$MoveSetScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transport = null,
    Object? budget = null,
  }) {
    return _then(_$MoveSetScreenStateImpl(
      transport: null == transport
          ? _value.transport
          : transport // ignore: cast_nullable_to_non_nullable
              as String,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MoveSetScreenStateImpl implements _MoveSetScreenState {
  const _$MoveSetScreenStateImpl(
      {required this.transport, required this.budget});

  @override
  final String transport;
  @override
  final String budget;

  @override
  String toString() {
    return 'MoveSetScreenState(transport: $transport, budget: $budget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveSetScreenStateImpl &&
            (identical(other.transport, transport) ||
                other.transport == transport) &&
            (identical(other.budget, budget) || other.budget == budget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transport, budget);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveSetScreenStateImplCopyWith<_$MoveSetScreenStateImpl> get copyWith =>
      __$$MoveSetScreenStateImplCopyWithImpl<_$MoveSetScreenStateImpl>(
          this, _$identity);
}

abstract class _MoveSetScreenState implements MoveSetScreenState {
  const factory _MoveSetScreenState(
      {required final String transport,
      required final String budget}) = _$MoveSetScreenStateImpl;

  @override
  String get transport;
  @override
  String get budget;
  @override
  @JsonKey(ignore: true)
  _$$MoveSetScreenStateImplCopyWith<_$MoveSetScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
