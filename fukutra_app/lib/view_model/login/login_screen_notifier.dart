import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fukutra_app/view_model/login/login_screen_state.dart';

final loginScreenProvider =
    StateNotifierProvider<LoginScreenNotifier, LoginScreenState>(
  (ref) => LoginScreenNotifier(ref)..initState(),
);

class LoginScreenNotifier extends StateNotifier<LoginScreenState> {
  final Ref ref;
  LoginScreenNotifier(this.ref)
      : super(LoginScreenState(
            visiable: true,
            emailController: TextEditingController(),
            passwordController: TextEditingController())) {
    initState();
  }

  Future<void> initState() async {}

  void changeVisiable() {
    state = state.copyWith(visiable: !state.visiable);
  } //パスワードの可視化、非可視化の変更処理

  void reset() {
    state = state.copyWith(emailController: TextEditingController(text: ""));
    state = state.copyWith(passwordController: TextEditingController(text: ""));
  }
}
