import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_screen_state.freezed.dart';

@freezed
class LoginScreenState with _$LoginScreenState {
  const factory LoginScreenState({
    required bool visiable,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) = _LoginScreenState;
}
