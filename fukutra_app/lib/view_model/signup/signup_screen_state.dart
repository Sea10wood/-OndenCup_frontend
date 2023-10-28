import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_screen_state.freezed.dart';

@freezed
class SignupScreenState with _$SignupScreenState {
  const factory SignupScreenState({
    required bool visiable,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) = _SignupScreenState;
}
