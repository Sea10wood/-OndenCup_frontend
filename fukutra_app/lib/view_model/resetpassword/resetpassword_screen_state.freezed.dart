// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resetpassword_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResetPasswordScreenState {
  TextEditingController get codeController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordScreenStateCopyWith<ResetPasswordScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordScreenStateCopyWith<$Res> {
  factory $ResetPasswordScreenStateCopyWith(ResetPasswordScreenState value,
          $Res Function(ResetPasswordScreenState) then) =
      _$ResetPasswordScreenStateCopyWithImpl<$Res, ResetPasswordScreenState>;
  @useResult
  $Res call(
      {TextEditingController codeController,
      TextEditingController passwordController});
}

/// @nodoc
class _$ResetPasswordScreenStateCopyWithImpl<$Res,
        $Val extends ResetPasswordScreenState>
    implements $ResetPasswordScreenStateCopyWith<$Res> {
  _$ResetPasswordScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeController = null,
    Object? passwordController = null,
  }) {
    return _then(_value.copyWith(
      codeController: null == codeController
          ? _value.codeController
          : codeController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPasswordScreenStateImplCopyWith<$Res>
    implements $ResetPasswordScreenStateCopyWith<$Res> {
  factory _$$ResetPasswordScreenStateImplCopyWith(
          _$ResetPasswordScreenStateImpl value,
          $Res Function(_$ResetPasswordScreenStateImpl) then) =
      __$$ResetPasswordScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController codeController,
      TextEditingController passwordController});
}

/// @nodoc
class __$$ResetPasswordScreenStateImplCopyWithImpl<$Res>
    extends _$ResetPasswordScreenStateCopyWithImpl<$Res,
        _$ResetPasswordScreenStateImpl>
    implements _$$ResetPasswordScreenStateImplCopyWith<$Res> {
  __$$ResetPasswordScreenStateImplCopyWithImpl(
      _$ResetPasswordScreenStateImpl _value,
      $Res Function(_$ResetPasswordScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeController = null,
    Object? passwordController = null,
  }) {
    return _then(_$ResetPasswordScreenStateImpl(
      codeController: null == codeController
          ? _value.codeController
          : codeController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$ResetPasswordScreenStateImpl implements _ResetPasswordScreenState {
  const _$ResetPasswordScreenStateImpl(
      {required this.codeController, required this.passwordController});

  @override
  final TextEditingController codeController;
  @override
  final TextEditingController passwordController;

  @override
  String toString() {
    return 'ResetPasswordScreenState(codeController: $codeController, passwordController: $passwordController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordScreenStateImpl &&
            (identical(other.codeController, codeController) ||
                other.codeController == codeController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, codeController, passwordController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordScreenStateImplCopyWith<_$ResetPasswordScreenStateImpl>
      get copyWith => __$$ResetPasswordScreenStateImplCopyWithImpl<
          _$ResetPasswordScreenStateImpl>(this, _$identity);
}

abstract class _ResetPasswordScreenState implements ResetPasswordScreenState {
  const factory _ResetPasswordScreenState(
          {required final TextEditingController codeController,
          required final TextEditingController passwordController}) =
      _$ResetPasswordScreenStateImpl;

  @override
  TextEditingController get codeController;
  @override
  TextEditingController get passwordController;
  @override
  @JsonKey(ignore: true)
  _$$ResetPasswordScreenStateImplCopyWith<_$ResetPasswordScreenStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
