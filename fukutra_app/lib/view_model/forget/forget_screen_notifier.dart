//状態管理のファイル

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fukutra_app/view_model/forget/forget_screen_state.dart';

final forgetScreenProvider =
    StateNotifierProvider<ForgetScreenNotifier, ForgetScreenState>(
  (ref) => ForgetScreenNotifier(ref)..initState(),
);

class ForgetScreenNotifier extends StateNotifier<ForgetScreenState> {
  final Ref ref;
  ForgetScreenNotifier(this.ref)
      : super(ForgetScreenState(nameController: TextEditingController())) {
    initState();
  }

  Future<void> initState() async {
    state = state.copyWith(nameController: TextEditingController(text: ""));
  }

  Future<void> resetPassword(String username) async {
    try {
      final result = await Amplify.Auth.resetPassword(
        username: username,
      );
      await handleResetPasswordResult(result);
    } on AuthException catch (e) {
      safePrint('Error resetting password: ${e.message}');
    }
  }

  void handleCodeDelivery(AuthCodeDeliveryDetails codeDeliveryDetails) {
    safePrint(
      'A confirmation code has been sent to ${codeDeliveryDetails.destination}. '
      'Please check your ${codeDeliveryDetails.deliveryMedium.name} for the code.',
    );
  }

  Future<void> handleResetPasswordResult(ResetPasswordResult result) async {
    switch (result.nextStep.updateStep) {
      case AuthResetPasswordStep.confirmResetPasswordWithCode:
        final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
        handleCodeDelivery(codeDeliveryDetails);
        break;
      case AuthResetPasswordStep.done:
        safePrint('Successfully reset password');
        break;
    }
  }
}
