// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupScreenState {
  bool get visiable => throw _privateConstructorUsedError;
  TextEditingController get emailController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupScreenStateCopyWith<SignupScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupScreenStateCopyWith<$Res> {
  factory $SignupScreenStateCopyWith(
          SignupScreenState value, $Res Function(SignupScreenState) then) =
      _$SignupScreenStateCopyWithImpl<$Res, SignupScreenState>;
  @useResult
  $Res call(
      {bool visiable,
      TextEditingController emailController,
      TextEditingController passwordController});
}

/// @nodoc
class _$SignupScreenStateCopyWithImpl<$Res, $Val extends SignupScreenState>
    implements $SignupScreenStateCopyWith<$Res> {
  _$SignupScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visiable = null,
    Object? emailController = null,
    Object? passwordController = null,
  }) {
    return _then(_value.copyWith(
      visiable: null == visiable
          ? _value.visiable
          : visiable // ignore: cast_nullable_to_non_nullable
              as bool,
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupScreenStateImplCopyWith<$Res>
    implements $SignupScreenStateCopyWith<$Res> {
  factory _$$SignupScreenStateImplCopyWith(_$SignupScreenStateImpl value,
          $Res Function(_$SignupScreenStateImpl) then) =
      __$$SignupScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool visiable,
      TextEditingController emailController,
      TextEditingController passwordController});
}

/// @nodoc
class __$$SignupScreenStateImplCopyWithImpl<$Res>
    extends _$SignupScreenStateCopyWithImpl<$Res, _$SignupScreenStateImpl>
    implements _$$SignupScreenStateImplCopyWith<$Res> {
  __$$SignupScreenStateImplCopyWithImpl(_$SignupScreenStateImpl _value,
      $Res Function(_$SignupScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visiable = null,
    Object? emailController = null,
    Object? passwordController = null,
  }) {
    return _then(_$SignupScreenStateImpl(
      visiable: null == visiable
          ? _value.visiable
          : visiable // ignore: cast_nullable_to_non_nullable
              as bool,
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$SignupScreenStateImpl implements _SignupScreenState {
  const _$SignupScreenStateImpl(
      {required this.visiable,
      required this.emailController,
      required this.passwordController});

  @override
  final bool visiable;
  @override
  final TextEditingController emailController;
  @override
  final TextEditingController passwordController;

  @override
  String toString() {
    return 'SignupScreenState(visiable: $visiable, emailController: $emailController, passwordController: $passwordController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupScreenStateImpl &&
            (identical(other.visiable, visiable) ||
                other.visiable == visiable) &&
            (identical(other.emailController, emailController) ||
                other.emailController == emailController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, visiable, emailController, passwordController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupScreenStateImplCopyWith<_$SignupScreenStateImpl> get copyWith =>
      __$$SignupScreenStateImplCopyWithImpl<_$SignupScreenStateImpl>(
          this, _$identity);
}

abstract class _SignupScreenState implements SignupScreenState {
  const factory _SignupScreenState(
          {required final bool visiable,
          required final TextEditingController emailController,
          required final TextEditingController passwordController}) =
      _$SignupScreenStateImpl;

  @override
  bool get visiable;
  @override
  TextEditingController get emailController;
  @override
  TextEditingController get passwordController;
  @override
  @JsonKey(ignore: true)
  _$$SignupScreenStateImplCopyWith<_$SignupScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
