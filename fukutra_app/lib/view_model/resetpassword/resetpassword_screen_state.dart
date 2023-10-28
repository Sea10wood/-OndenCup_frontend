import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resetpassword_screen_state.freezed.dart';

@freezed
class ResetPasswordScreenState with _$ResetPasswordScreenState {
  const factory ResetPasswordScreenState({
    required TextEditingController codeController,
    required TextEditingController passwordController,
  }) = _ResetPasswordScreenState;
}
