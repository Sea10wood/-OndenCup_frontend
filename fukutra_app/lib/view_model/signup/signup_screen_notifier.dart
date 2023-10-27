// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:fukutra_app/component/bar.dart';
// import 'package:fukutra_app/view_model/signup/signup_screen_state.dart';

// //ここまでがモデル、ここから下がviewモデル
// final signupScreenProvider =
//     StateNotifierProvider<SignupScreenNotifier, SignupScreenState>(
//   (ref) => SignupScreenNotifier(ref)..initState(),
// ); //stateの定義

// class SignupScreenNotifier extends StateNotifier<SignupScreenState> {
//   final Ref ref;
//   SignupScreenNotifier(this.ref)
//       : super(SignupScreenState(
//             visiable: true,
//             emailController: TextEditingController(),
//             passwordController: TextEditingController())) {
//     initState();
//   }

//   Future<void> initState() async {
//     state = state.copyWith(
//         emailController: TextEditingController(text: ""),
//         passwordController: TextEditingController(text: ""),
//         visiable: true);
//   }

//   void changeVisiable() {
//     state = state.copyWith(visiable: !state.visiable);
//   } //パスワードの可視化、非可視化の変更処理

//   Future<void> signup(BuildContext context) async {
//     try {
//       snackbar("メールを送信しました", context);
//       final user = await ref
//           .read(authProvider)
//           .signup(state.emailController.text, state.passwordController.text);
//       ref.read(authProvider).createaccount(user);

//       //一度signoutして画面遷移(ログイン)orログイン状態のままhome(登録画面)に遷移

//       // ignore: use_build_context_synchronously
//     } catch (e) {
//       //signupに関するエラー処理
//     }
//     //ここにサインアップ処理を書く
//   }
// }
// //stateの処理
