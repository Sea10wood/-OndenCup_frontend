// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirmuser_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConfirmUserScreenState {
  TextEditingController get codeController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfirmUserScreenStateCopyWith<ConfirmUserScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmUserScreenStateCopyWith<$Res> {
  factory $ConfirmUserScreenStateCopyWith(ConfirmUserScreenState value,
          $Res Function(ConfirmUserScreenState) then) =
      _$ConfirmUserScreenStateCopyWithImpl<$Res, ConfirmUserScreenState>;
  @useResult
  $Res call({TextEditingController codeController});
}

/// @nodoc
class _$ConfirmUserScreenStateCopyWithImpl<$Res,
        $Val extends ConfirmUserScreenState>
    implements $ConfirmUserScreenStateCopyWith<$Res> {
  _$ConfirmUserScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeController = null,
  }) {
    return _then(_value.copyWith(
      codeController: null == codeController
          ? _value.codeController
          : codeController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmUserScreenStateImplCopyWith<$Res>
    implements $ConfirmUserScreenStateCopyWith<$Res> {
  factory _$$ConfirmUserScreenStateImplCopyWith(
          _$ConfirmUserScreenStateImpl value,
          $Res Function(_$ConfirmUserScreenStateImpl) then) =
      __$$ConfirmUserScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextEditingController codeController});
}

/// @nodoc
class __$$ConfirmUserScreenStateImplCopyWithImpl<$Res>
    extends _$ConfirmUserScreenStateCopyWithImpl<$Res,
        _$ConfirmUserScreenStateImpl>
    implements _$$ConfirmUserScreenStateImplCopyWith<$Res> {
  __$$ConfirmUserScreenStateImplCopyWithImpl(
      _$ConfirmUserScreenStateImpl _value,
      $Res Function(_$ConfirmUserScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeController = null,
  }) {
    return _then(_$ConfirmUserScreenStateImpl(
      codeController: null == codeController
          ? _value.codeController
          : codeController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$ConfirmUserScreenStateImpl implements _ConfirmUserScreenState {
  const _$ConfirmUserScreenStateImpl({required this.codeController});

  @override
  final TextEditingController codeController;

  @override
  String toString() {
    return 'ConfirmUserScreenState(codeController: $codeController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmUserScreenStateImpl &&
            (identical(other.codeController, codeController) ||
                other.codeController == codeController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, codeController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmUserScreenStateImplCopyWith<_$ConfirmUserScreenStateImpl>
      get copyWith => __$$ConfirmUserScreenStateImplCopyWithImpl<
          _$ConfirmUserScreenStateImpl>(this, _$identity);
}

abstract class _ConfirmUserScreenState implements ConfirmUserScreenState {
  const factory _ConfirmUserScreenState(
          {required final TextEditingController codeController}) =
      _$ConfirmUserScreenStateImpl;

  @override
  TextEditingController get codeController;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmUserScreenStateImplCopyWith<_$ConfirmUserScreenStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
