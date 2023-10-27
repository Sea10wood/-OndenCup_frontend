// //状態管理のファイル

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:fukutra_app/view_model/forget/forget_screen_state.dart';

// final forgetScreenProvider =
//     StateNotifierProvider<ForgetScreenNotifier, ForgetScreenState>(
//   (ref) => ForgetScreenNotifier(ref)..initState(),
// );

// class ForgetScreenNotifier extends StateNotifier<ForgetScreenState> {
//   final Ref ref;
//   ForgetScreenNotifier(this.ref)
//       : super(ForgetScreenState(emailController: TextEditingController())) {
//     initState();
//   }

//   Future<void> initState() async {
//     state = state.copyWith(emailController: TextEditingController(text: ""));
//   }

//   Future<String> forget(BuildContext context) async {
//     final message = await ref.read(authProvider).forget();
//     return message;
//   }
// }
