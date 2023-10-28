import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fukutra_app/view_model/resetpassword/resetpassword_screen_state.dart';

final resetPasswordScreenProvider = StateNotifierProvider<
    ResetPasswordScreenNotifier, ResetPasswordScreenState>(
  (ref) => ResetPasswordScreenNotifier(ref)..initState(),
);

class ResetPasswordScreenNotifier
    extends StateNotifier<ResetPasswordScreenState> {
  final Ref ref;
  ResetPasswordScreenNotifier(this.ref)
      : super(
          ResetPasswordScreenState(
              codeController: TextEditingController(),
              passwordController: TextEditingController()),
        ) {
    initState();
  }

  Future<void> initState() async {
    state = state.copyWith(
        codeController: TextEditingController(text: ""),
        passwordController: TextEditingController(text: ""));
  }

  Future<void> resetpassword(String name, String code, String password) async {
    try {
      final result = await Amplify.Auth.confirmResetPassword(
        username: name,
        newPassword: password,
        confirmationCode: code,
      );
      safePrint('Password reset complete: ${result.isPasswordReset}');
    } on AuthException catch (e) {
      safePrint('Error resetting password: ${e.message}');
    }
  }
}
