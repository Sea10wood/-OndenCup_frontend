import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fukutra_app/view_model/login/login_screen_state.dart';
import 'package:go_router/go_router.dart';

final loginScreenProvider =
    StateNotifierProvider<LoginScreenNotifier, LoginScreenState>(
  (ref) => LoginScreenNotifier(ref)..initState(),
);

class LoginScreenNotifier extends StateNotifier<LoginScreenState> {
  final Ref ref;
  LoginScreenNotifier(this.ref)
      : super(LoginScreenState(
            visiable: true,
            nameController: TextEditingController(),
            passwordController: TextEditingController())) {
    initState();
  }

  Future<void> initState() async {}

  void changeVisiable() {
    state = state.copyWith(visiable: !state.visiable);
  } //パスワードの可視化、非可視化の変更処理

  Future<void> signInUser(
      String username, String password, BuildContext context) async {
    try {
      final result = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      await handleSignInResult(result, context);
    } on AuthException catch (e) {
      safePrint('Error signing in: ${e.message}');
    }
  }

  Future<void> handleSignInResult(
      SignInResult result, BuildContext context) async {
    switch (result.nextStep.signInStep) {
      case AuthSignInStep.confirmSignInWithSmsMfaCode:
        final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
        _handleCodeDelivery(codeDeliveryDetails);
        break;
      case AuthSignInStep.confirmSignInWithNewPassword:
        safePrint('Enter a new password to continue signing in');
        break;
      case AuthSignInStep.confirmSignInWithCustomChallenge:
        final parameters = result.nextStep.additionalInfo;
        final prompt = parameters['prompt']!;
        safePrint(prompt);
        break;
      // case AuthSignInStep.resetPassword:
      //   final resetResult = await Amplify.Auth.resetPassword(
      //     username: username,
      //   );
      //   await _handleResetPasswordResult(resetResult);
      //   break;
      case AuthSignInStep.done:
        safePrint('Sign in is complete');
        context.go('/home');
        break;
      default:
        safePrint('Unexpected next step: ${result.nextStep.signInStep}');
    }
  }

  void _handleCodeDelivery(AuthCodeDeliveryDetails codeDeliveryDetails) {
    safePrint(
      'A confirmation code has been sent to ${codeDeliveryDetails.destination}. '
      'Please check your ${codeDeliveryDetails.deliveryMedium.name} for the code.',
    );
  }

  void reset() {
    state = state.copyWith(nameController: TextEditingController(text: ""));
    state = state.copyWith(passwordController: TextEditingController(text: ""));
  }
}
