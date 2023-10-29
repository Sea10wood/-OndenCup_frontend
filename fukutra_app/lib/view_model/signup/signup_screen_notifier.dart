import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fukutra_app/view_model/signup/signup_screen_state.dart';

//ここまでがモデル、ここから下がviewモデル
final signupScreenProvider =
    StateNotifierProvider<SignupScreenNotifier, SignupScreenState>(
  (ref) => SignupScreenNotifier(ref)..initState(),
); //stateの定義

class SignupScreenNotifier extends StateNotifier<SignupScreenState> {
  final Ref ref;
  SignupScreenNotifier(this.ref)
      : super(SignupScreenState(
            visiable: true,
            usernameController: TextEditingController(),
            emailController: TextEditingController(),
            passwordController: TextEditingController())) {
    initState();
  }

  Future<void> initState() async {
    state = state.copyWith(
        emailController: TextEditingController(text: ""),
        passwordController: TextEditingController(text: ""),
        usernameController: TextEditingController(text: ""),
        visiable: true);
  }

  void changeVisiable() {
    state = state.copyWith(visiable: !state.visiable);
  }

  Future<void> signUpUser() async {
    try {
      final userAttributes = {
        AuthUserAttributeKey.email: state.emailController.text,
      };
      final result = await Amplify.Auth.signUp(
        username: state.usernameController.text,
        password: state.passwordController.text,
        options: SignUpOptions(
          userAttributes: userAttributes,
        ),
      );
      await handleSignUpResult(result);
    } on AuthException catch (e) {
      safePrint('Error signing up user: ${e.message}');
    }
  }

  Future<void> handleSignUpResult(SignUpResult result) async {
    switch (result.nextStep.signUpStep) {
      case AuthSignUpStep.confirmSignUp:
        final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
        handleCodeDelivery(codeDeliveryDetails);
        break;
      case AuthSignUpStep.done:
        safePrint('Sign up is complete');
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
