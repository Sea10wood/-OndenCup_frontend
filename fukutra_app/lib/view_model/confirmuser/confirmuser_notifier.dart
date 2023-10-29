import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fukutra_app/view_model/confirmuser/confirmuser_screen_state.dart';
import 'package:go_router/go_router.dart';

//ここまでがモデル、ここから下がviewモデル
final confirmUserScreenProvider =
    StateNotifierProvider<ConfirmUserScreenNotifier, ConfirmUserScreenState>(
  (ref) => ConfirmUserScreenNotifier(ref)..initState(),
); //stateの定義

class ConfirmUserScreenNotifier extends StateNotifier<ConfirmUserScreenState> {
  final Ref ref;
  ConfirmUserScreenNotifier(this.ref)
      : super(ConfirmUserScreenState(codeController: TextEditingController())) {
    initState();
  }

  Future<void> initState() async {
    state = state.copyWith(codeController: TextEditingController(text: ""));
  }

  Future<void> confirmUser(
      String username, String confirmationCode, context) async {
    try {
      final result = await Amplify.Auth.confirmSignUp(
        username: username,
        confirmationCode: confirmationCode,
      );
      // Check if further confirmations are needed or if
      // the sign up is complete.
      await handleSignUpResult(result, context);
    } on AuthException catch (e) {
      safePrint('Error confirming user: ${e.message}');
    }
  }

  Future<void> handleSignUpResult(
      SignUpResult result, BuildContext context) async {
    switch (result.nextStep.signUpStep) {
      case AuthSignUpStep.confirmSignUp:
        final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
        handleCodeDelivery(codeDeliveryDetails);
        break;
      case AuthSignUpStep.done:
        safePrint('Sign up is complete');
        context.go('/home');
        break;
    }
  }

  void handleCodeDelivery(AuthCodeDeliveryDetails codeDeliveryDetails) {
    safePrint(
      'A confirmation code has been sent to ${codeDeliveryDetails.destination}. '
      'Please check your ${codeDeliveryDetails.deliveryMedium.name} for the code.',
    );
  }
}
//stateの処理

