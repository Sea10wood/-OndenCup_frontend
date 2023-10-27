// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:fukutra_app/component/bar.dart';
// import 'package:fukutra_app/view_model/forget/forget_screen_notifier.dart';

// class ForgetScreen extends ConsumerWidget {
//   const ForgetScreen({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(forgetScreenProvider); //値の読み込みのみ
//     final forgetNotifier = ref.read(forgetScreenProvider.notifier); //値の書き込み
//     final emailController = state.emailController;

//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           leading: IconButton(
//             icon: const Icon(Icons.arrow_back_ios),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           title: const Text("Forget Screen"),
//         ),
//         body: Center(
//           child: SingleChildScrollView(
//             child: Column(
//                 //縦に並べる
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     "Forget",
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blue,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(
//                         left: 20, right: 20, top: 20, bottom: 10),
//                     child: TextFormField(
//                       keyboardType: TextInputType.emailAddress,
//                       autofocus: false, //テキスト入力時に処理
//                       controller: emailController,
//                       decoration: const InputDecoration(
//                         border: OutlineInputBorder(),
//                         labelText: 'Email',
//                       ),
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       final message = forgetNotifier.forget(context);
//                       snackbar(message as String, context);
//                       Navigator.pop(context);
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.blue,
//                       foregroundColor: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                     child: const Text('Send Email'),
//                   ),
//                   //assets/googlelogo.png
//                 ]),
//           ),
//         )); //UIに表示させるボタンや背景の色、素材の表示
//   }
// }
