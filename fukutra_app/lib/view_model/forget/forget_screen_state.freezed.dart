// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgetScreenState {
  TextEditingController get emailController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgetScreenStateCopyWith<ForgetScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetScreenStateCopyWith<$Res> {
  factory $ForgetScreenStateCopyWith(
          ForgetScreenState value, $Res Function(ForgetScreenState) then) =
      _$ForgetScreenStateCopyWithImpl<$Res, ForgetScreenState>;
  @useResult
  $Res call({TextEditingController emailController});
}

/// @nodoc
class _$ForgetScreenStateCopyWithImpl<$Res, $Val extends ForgetScreenState>
    implements $ForgetScreenStateCopyWith<$Res> {
  _$ForgetScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailController = null,
  }) {
    return _then(_value.copyWith(
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgetScreenStateImplCopyWith<$Res>
    implements $ForgetScreenStateCopyWith<$Res> {
  factory _$$ForgetScreenStateImplCopyWith(_$ForgetScreenStateImpl value,
          $Res Function(_$ForgetScreenStateImpl) then) =
      __$$ForgetScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextEditingController emailController});
}

/// @nodoc
class __$$ForgetScreenStateImplCopyWithImpl<$Res>
    extends _$ForgetScreenStateCopyWithImpl<$Res, _$ForgetScreenStateImpl>
    implements _$$ForgetScreenStateImplCopyWith<$Res> {
  __$$ForgetScreenStateImplCopyWithImpl(_$ForgetScreenStateImpl _value,
      $Res Function(_$ForgetScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailController = null,
  }) {
    return _then(_$ForgetScreenStateImpl(
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$ForgetScreenStateImpl implements _ForgetScreenState {
  const _$ForgetScreenStateImpl({required this.emailController});

  @override
  final TextEditingController emailController;

  @override
  String toString() {
    return 'ForgetScreenState(emailController: $emailController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetScreenStateImpl &&
            (identical(other.emailController, emailController) ||
                other.emailController == emailController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetScreenStateImplCopyWith<_$ForgetScreenStateImpl> get copyWith =>
      __$$ForgetScreenStateImplCopyWithImpl<_$ForgetScreenStateImpl>(
          this, _$identity);
}

abstract class _ForgetScreenState implements ForgetScreenState {
  const factory _ForgetScreenState(
          {required final TextEditingController emailController}) =
      _$ForgetScreenStateImpl;

  @override
  TextEditingController get emailController;
  @override
  @JsonKey(ignore: true)
  _$$ForgetScreenStateImplCopyWith<_$ForgetScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
