// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class SignupScreen extends ConsumerWidget {
//   const SignupScreen({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(signupScreenProvider); //値の読み込みのみ
//     final signupNotifier = ref.read(signupScreenProvider.notifier); //値の書き込み
//     final emailController = state.emailController;
//     final passwordController = state.passwordController;
//     final visiableController = state.visiable;

//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back_ios),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           title: const Text("Signup Screen"),
//         ),
//         body: Center(
//           child: SingleChildScrollView(
//             child: Column(
//                 //縦に並べる
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     "Signup",
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
//                   Padding(
//                     padding: const EdgeInsets.only(
//                         left: 20, right: 20, top: 10, bottom: 10),
//                     child: TextFormField(
//                       obscureText: visiableController,
//                       keyboardType: TextInputType.visiblePassword,
//                       autofocus: false, //テキスト入力時に処理
//                       controller: passwordController,
//                       decoration: InputDecoration(
//                         border: const OutlineInputBorder(),
//                         labelText: 'Password',
//                         suffixIcon: IconButton(
//                           onPressed: () {
//                             signupNotifier.changeVisiable();
//                           },
//                           icon: Icon(visiableController
//                               ? Icons.visibility_off
//                               : Icons.visibility),
//                         ),
//                       ),
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       signupNotifier.signup(context);
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.blue,
//                       foregroundColor: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                     child: const Text('Signup'),
//                   ),
//                   //assets/googlelogo.png
//                 ]),
//           ),
//         )); //UIに表示させるボタンや背景の色、素材の表示
//   }
// }
