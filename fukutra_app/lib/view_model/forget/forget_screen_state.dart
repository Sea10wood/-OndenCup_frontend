import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_screen_state.freezed.dart';

@freezed
class ForgetScreenState with _$ForgetScreenState {
  const factory ForgetScreenState({
    required TextEditingController emailController,
  }) = _ForgetScreenState;
}
