import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirmuser_screen_state.freezed.dart';

@freezed
class ConfirmUserScreenState with _$ConfirmUserScreenState {
  const factory ConfirmUserScreenState({
    required TextEditingController codeController,
  }) = _ConfirmUserScreenState;
}
