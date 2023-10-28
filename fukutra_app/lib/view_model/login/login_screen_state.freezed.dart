// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginScreenState {
  bool get visiable => throw _privateConstructorUsedError;
  TextEditingController get nameController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginScreenStateCopyWith<LoginScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginScreenStateCopyWith<$Res> {
  factory $LoginScreenStateCopyWith(
          LoginScreenState value, $Res Function(LoginScreenState) then) =
      _$LoginScreenStateCopyWithImpl<$Res, LoginScreenState>;
  @useResult
  $Res call(
      {bool visiable,
      TextEditingController nameController,
      TextEditingController passwordController});
}

/// @nodoc
class _$LoginScreenStateCopyWithImpl<$Res, $Val extends LoginScreenState>
    implements $LoginScreenStateCopyWith<$Res> {
  _$LoginScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visiable = null,
    Object? nameController = null,
    Object? passwordController = null,
  }) {
    return _then(_value.copyWith(
      visiable: null == visiable
          ? _value.visiable
          : visiable // ignore: cast_nullable_to_non_nullable
              as bool,
      nameController: null == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginScreenStateImplCopyWith<$Res>
    implements $LoginScreenStateCopyWith<$Res> {
  factory _$$LoginScreenStateImplCopyWith(_$LoginScreenStateImpl value,
          $Res Function(_$LoginScreenStateImpl) then) =
      __$$LoginScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool visiable,
      TextEditingController nameController,
      TextEditingController passwordController});
}

/// @nodoc
class __$$LoginScreenStateImplCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$LoginScreenStateImpl>
    implements _$$LoginScreenStateImplCopyWith<$Res> {
  __$$LoginScreenStateImplCopyWithImpl(_$LoginScreenStateImpl _value,
      $Res Function(_$LoginScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visiable = null,
    Object? nameController = null,
    Object? passwordController = null,
  }) {
    return _then(_$LoginScreenStateImpl(
      visiable: null == visiable
          ? _value.visiable
          : visiable // ignore: cast_nullable_to_non_nullable
              as bool,
      nameController: null == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$LoginScreenStateImpl implements _LoginScreenState {
  const _$LoginScreenStateImpl(
      {required this.visiable,
      required this.nameController,
      required this.passwordController});

  @override
  final bool visiable;
  @override
  final TextEditingController nameController;
  @override
  final TextEditingController passwordController;

  @override
  String toString() {
    return 'LoginScreenState(visiable: $visiable, nameController: $nameController, passwordController: $passwordController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginScreenStateImpl &&
            (identical(other.visiable, visiable) ||
                other.visiable == visiable) &&
            (identical(other.nameController, nameController) ||
                other.nameController == nameController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, visiable, nameController, passwordController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginScreenStateImplCopyWith<_$LoginScreenStateImpl> get copyWith =>
      __$$LoginScreenStateImplCopyWithImpl<_$LoginScreenStateImpl>(
          this, _$identity);
}

abstract class _LoginScreenState implements LoginScreenState {
  const factory _LoginScreenState(
          {required final bool visiable,
          required final TextEditingController nameController,
          required final TextEditingController passwordController}) =
      _$LoginScreenStateImpl;

  @override
  bool get visiable;
  @override
  TextEditingController get nameController;
  @override
  TextEditingController get passwordController;
  @override
  @JsonKey(ignore: true)
  _$$LoginScreenStateImplCopyWith<_$LoginScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
